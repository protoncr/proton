require "socket"

module Proton
  module Network
    enum RequestState
      NotSerialized
      Serialized
      Sent
    end

    class Request
      property body : Bytes
      property state : RequestState
      property msg_id : MTProto::MsgId?
      property result : Channel(Bytes | InvocationError)

      def initialize(@body : Bytes, @state : RequestState = RequestState::NotSerialized, @msg_id : MTProto::MsgId? = nil, @result : Channel(Bytes | InvocationError) = Channel.new)
      end
    end

    class Sender
      Log = ::Log.for(self)

      # The maximum data that we're willing to send or receive at once.
      #
      # By having a fixed-size buffer, we can avoid unnecessary allocations
      # and trivially prevent allocating more than this limit if we ever
      # received invalid data.
      #
      # Telegram will close the connection with roughly a megabyte of data,
      # so to account for the transports' own overhead, we add a few extra
      # kilobytes to the maximum data size.
      MAXIMUM_DATA = (1024 * 1024) + (8 * 1024)

      # How often to send pings
      PING_DELAY = 60.seconds

      # After how many seconds should the server close the connection when we send a ping?
      #
      # What this value essentially means is that we have `NO_PING_DISCONNECT - PING_DELAY` seconds
      # to keep sending pings, or the server will close the connection.
      #
      # Pings ensure the connection is kept active, and the delayed disconnect ensures the messages
      # are getting through consistently enough.
      NO_PING_DISCONNECT = 75

      getter socket : TCPSocket
      getter transport : MTProto::BaseTransport
      getter mtp : MTProto::MtpBase
      getter mtp_buffer : Bytes

      getter requests : Array(Request)
      getter request_channel : Channel(Request)
      getter read_channel : Channel(UInt32)
      getter write_channel : Channel(UInt32)
      getter next_ping : Time

      getter write_buffer : Bytes
      getter read_buffer : Bytes
      getter write_index : UInt32

      @mutex : Mutex

      # :nodoc:
      def initialize(socket, transport, mtp, mtp_buffer, *, requests = nil, request_channel = nil, read_channel = nil, write_channel = nil, next_ping = nil, write_buffer = nil, read_buffer = nil, write_index = nil)
        @socket = socket
        @transport = transport
        @mtp = mtp
        @mtp_buffer = mtp_buffer

        @requests = requests || [] of Request
        @request_channel = request_channel || Channel(Request).new
        @read_channel = read_channel || Channel(UInt32).new
        @write_channel = write_channel || Channel(UInt32).new
        @next_ping = next_ping || Time.local + PING_DELAY
        @read_buffer = read_buffer || Bytes.new(MAXIMUM_DATA)
        @write_buffer = write_buffer || Bytes.new(MAXIMUM_DATA)
        @write_index = write_index || 0_u32
        @mutex = Mutex.new
      end

      # Initiate a connection using the given transport, Mtp instance, and socket address. This is meant mostly
      # for internal use. Returns a new `Sender` instance.
      def self.connect(transport : MTProto::BaseTransport, mtp : MTProto::MtpBase, addr : Socket::Address)
        Log.info { "Connecting..." }
        socket = TCPSocket.new(Socket::Family::INET)
        socket.connect(addr)

        new(socket, transport, mtp, Bytes.new(MAXIMUM_DATA))
      end

      # Initiate a connection using the given transport, Mtp instance, and socket address; then process
      # the authentication flow. Returns a new `Sender` instance.
      def self.connect(transport : MTProto::BaseTransport, addr : Socket::Address)
        sender = self.connect(transport, MTProto::MtpPlain.new, addr)

        Log.info { "generating new auth key..." }
        request, data = MTProto::Authentication.step1
        Log.info { "gen auth key: sending step 1" }
        response = sender.send(request)
        Log.info { "gen auth key: starting step 2" }
        request, data = MTProto::Authentication.step2(data, response.as(Bytes))
        Log.info { "gen auth key: sending step 2" }
        response = sender.send(request)
        Log.info { "gen auth key: starting step 3" }
        request, data = MTProto::Authentication.step3(data, response.as(Bytes))
        Log.info { "gen auth key: sending step 3" }
        response = sender.send(request)
        Log.info { "gen auth key: completed generation" }

        auth = MTProto::Authentication.create_key(data, response.as(Bytes))
        Log.info { "authorization key generated successfully" }

        builder = MTProto::MtpEncrypted.build
        builder.time_offset = auth.time_offset
        builder.first_salt = auth.first_salt

        new(
          socket: sender.socket,
          transport: sender.transport,
          mtp: builder.finish(auth.auth_key.to_slice),
          mtp_buffer: sender.mtp_buffer,
          requests: sender.requests,
          request_channel: sender.request_channel,
          read_channel: sender.read_channel,
          write_channel: sender.write_channel,
          next_ping: Time.local + PING_DELAY,
          read_buffer: sender.read_buffer,
          write_buffer: sender.write_buffer,
          write_index: sender.write_index,
        )
      end

      def self.connect_with_auth(transport : MTProto::BaseTransport, addr : Socket::Address, auth_key : Bytes)
        self.connect(transport, MTProto::MtpEncrypted.build.finish(auth_key), addr)
      end

      def auth_key
        @mtp.auth_key
      end

      # Send a request to the server
      def invoke(request : TL::RemoteCallable) : Bytes
        rx = self.enqueue_body(request.to_bytes)
        self.step_until_receive(rx)
      end

      # Send a raw request to the server. See `#invoke`.
      def send(body : Bytes)
        rx = self.enqueue_body(body)
        self.step_until_receive(rx)
      end

      def enqueue_body(body : Bytes)
        raise "invalid body length" unless body.size >= 4
        req_id = IO::ByteFormat::LittleEndian.decode(UInt32, body[0..3])
        Log.debug { "Enqueueing request (#{req_id}) to be serialized" }

        rx = Channel(Bytes | InvocationError).new
        @requests << Request.new(body, RequestState::NotSerialized, nil, rx)
        rx
      end

      def step_until_receive(rx : Channel(Bytes | InvocationError))
        loop do
          self.step
          select
          when result = rx.receive
            return result
          else
            next
          end
        end
      rescue ex : Channel::ClosedError
        raise "request channel dropped before receiving a result"
      end

      def step
        self.try_fill_write

        # TODO: Probably want to properly set the request state on disconnect
        write_len = @write_buffer.size - @write_index

        spawn do
          count, addr = @socket.receive(@read_buffer)
          @read_channel.send(count.to_u32)
        end

        spawn do
          count = @socket.send(@write_buffer[@write_index..])
          @write_channel.send(count.to_u32)
        end

        if @write_buffer.empty?
          # TODO this always has to read the header of the packet and then the rest (2 or more calls)
          # it would be better to always perform calls in a circular buffer to have as much data from
          # the network as possible at all times, not just reading what's needed
          # (perhaps something similar could be done with the write buffer to write packet after packet)
          #
          # The `request_channel.recv()` can't return `None` because we're holding a `tx`.
          Log.trace { "reading bytes from the network" }

          select
          when request = @request_channel.receive
            @requests.push(request)
            Bytes.empty
          when count = @read_channel.receive
            self.on_net_read(count)
          when timeout PING_DELAY
            self.on_ping_timeout
            Bytes.empty
          end
        else
          Log.trace { "reading bytes and sending up to #{write_len} bytes via network" }

          select
          when request = @request_channel.receive
            @requests.push(request)
            Bytes.empty
          when count = @read_channel.receive
            self.on_net_read(count)
          when count = @write_channel.receive
            self.on_net_write(count)
            Bytes.empty
          when timeout PING_DELAY
            self.on_ping_timeout
            Bytes.empty
          end
        end
      end

      # Setup the write buffer for the transport, unless a write is already pending.
      def try_fill_write
        unless @write_buffer.empty?
          return
        end

        requests = @requests.select { |r| r.state == RequestState::NotSerialized }
        if requests.empty?
          return
        end

        msg_ids = [] of MTProto::MsgId
        requests.each do |r|
          msg_id = r.msg_id
          msg_ids << msg_id if msg_id
        end

        temp_bytes = @mtp.finalize
        @mtp_buffer = temp_bytes[..]
        @write_buffer.clear
        @transport.pack(IO::Memory.new(@mtp_buffer), IO::Memory.new(@write_buffer))

        # NOTE: we have to use the FILTERED requests, not the saved ones.
        # The key to finding this was printing the old and new state (but took ~2h to find).
        # Otherwise we will likely change from Sent to Serialized and enter an infinite loop.
        # This will very easily cause transport flood (using self, trying to upload two files at once).
        # TODO add a test for this
        requests
          .zip(msg_ids)
          .each do |(req, msg_id)|
            req_id = IO::ByteFormat::LittleEndian.decode(UInt32, req.body[0..3])
            Log.debug { "Serialized request #{req_id} with #{msg_id}" }
          end
      end

      def on_net_read(n : UInt32)
        if n == 0
          raise IOError.new("connection reset; read 0 bytes")
        end

        Log.trace { "read #{n} bytes from the network" }
        Log.trace { "trying to unpack buffer of #{n} bytes..." }

        # TODO: the buffer might have multiple transport packets, what should happen with the
        # updates successfully read if subsequent packets fail to be deserialized properly?
        updates = [] of TL::Root::TypeUpdate
        until @read_buffer.empty?
          @mtp_buffer.clear
          begin
            @transport.unpack(IO::Memory.new(@read_buffer), IO::Memory.new(@mtp_buffer))
            @read_buffer.advance(n)
            self.process_mtp_buffer(updates)
          rescue MTProto::MissingBytesError
            break
          end
        end
        updates
      end

      def on_net_write(n : UInt32)
        @write_index += n
        Log.trace { "wrote #{n} bytes to the network (#{@write_index}/#{@write_buffer.size})" }
        raise "tried to write more bytes than exist in the buffer" if @write_index > @write_buffer.size
        if @write_index
          !-@write_buffer.size
          return
        end

        @write_buffer.clear
        @write_index = 0
        @requests.each do |req|
          case req.state
          when RequestState::NotSerialized, RequestState::Sent
            # Do nothing
          when RequestState::Serialized
            Log.debug { "sent requests with #{req.msg_id}" }
            req.state = RequestState::Sent
          end
        end
      end

      def on_ping_timeout
        ping_id = Sender.generate_random_id
        Log.debug { "enqueuing keepalive ping #{ping_id}" }
        self.enqueue_body(TL::Root::PingDelayDisconnect.new(
          ping_id,
          disconnect_delay: NO_PING_DISCONNECT
        ).to_bytes)
        @next_ping = Time.local + PING_DELAY
      end

      def process_mtp_buffer(updates : Array(TL::Root::TypeUpdate))
        Log.debug { "deserializing valid transport packet..." }
        result = @mtp.deserialize(@mtp_buffer)

        updates = updates.concat(result.updates.compact_map { |update|
          begin
            TL::Root::TypeUpdate.tl_deserialize(IO::Memory.new(update))
          rescue ex
            Log.warn { "telegram sent updates that failed to be deserialized: #{ex.message}" }
          end
        })

        result.rpc_results.each do |(msg_id, ret)|
          found = false
          (0...@requests.size).each do |i|
            req = @requests[i]
            case req.state
            when RequestState::Serialized
              if req.msg_id == msg_id
                raise "got rpc result #{req.msg_id} for unsent request #{msg_id}"
              end
            when RequestState::Sent
              if req.msg_id == msg_id
                found = true
                result = case ret
                         when Bytes
                           raise "bad payload size" unless ret.size >= 4
                           res_id = IO::ByteFormat::LittleEndian.decode(UInt32, ret[0..3])
                           Log.debug { "got result #{res_id} for request #{msg_id}" }
                           ret
                         when MTProto::BadMessageError
                           # TODO: add a test to make sure we resend the request
                           Log.info { "#{ret}; re-sending request #{msg_id}" }
                           req.state = RequestState::NotSerialized
                           break
                         else
                           raise ret
                         end

                req = @requests.delete_at(i)
                req.result.send(result)
                break
              end
            else
              # Nothing here for now
            end
          end

          unless found
            Log.info { "got rpc result #{msg_id} but not such request is saved" }
          end
        end
      end

      # Generate a random ID for each ping
      def self.generate_random_id
        last_id = Atomic.new(0_i64)

        if last_id.get == 0
          since_epoch = Time.utc - Time.unix(0)
          now = since_epoch.total_nanoseconds.to_i64
          last_id.compare_and_set(0, now)
        end

        last_id.add(1)
      end
    end
  end
end
