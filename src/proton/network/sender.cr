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
      getter mtp_buffer : IO::Memory

      getter requests : Array(Request)
      getter request_channel : Channel(Request)
      getter read_channel : Channel(UInt32)
      getter write_channel : Channel(UInt32)
      getter next_ping : Time

      getter write_buffer : IO::Memory
      getter read_buffer : IO::Memory

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
        @read_buffer = read_buffer || IO::Memory.new(MAXIMUM_DATA)
        @write_buffer = write_buffer || IO::Memory.new(MAXIMUM_DATA)
        @mutex = Mutex.new
      end

      # Initiate a connection using the given transport, Mtp instance, and socket address. This is meant mostly
      # for internal use. Returns a new `Sender` instance.
      def self.connect(transport : MTProto::BaseTransport, mtp : MTProto::MtpBase, addr : Socket::Address)
        Log.info { "Connecting..." }
        socket = TCPSocket.new(Socket::Family::INET)
        socket.connect(addr)

        new(socket, transport, mtp, IO::Memory.new(MAXIMUM_DATA))
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
        request, data = MTProto::Authentication.step2(data, response)
        Log.info { "gen auth key: sending step 2" }
        response = sender.send(request)
        Log.info { "gen auth key: starting step 3" }
        request, data = MTProto::Authentication.step3(data, response)
        Log.info { "gen auth key: sending step 3" }
        response = sender.send(request)
        Log.info { "gen auth key: completed generation" }

        auth = MTProto::Authentication.create_key(data, response)
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
        )
      end

      def self.connect_with_auth(transport : MTProto::BaseTransport, addr : Socket::Address, auth_key : Bytes)
        self.connect(transport, MTProto::MtpEncrypted.build.finish(auth_key), addr)
      end

      def auth_key
        @mtp.auth_key
      end

      # Send a request to the server and return its deserialized response.
      def invoke(request : TL::TLRequest) : Bytes
        rx = self.enqueue_body(request.to_bytes)
        body = self.step_until_receive(rx)
        request.class.return_type.from_bytes(body)
      end

      # Send a raw request to the server. See `#invoke`.
      def send(body : Bytes) : Bytes
        rx = self.enqueue_body(body)
        self.step_until_receive(rx)
      end

      def enqueue_body(body : Bytes)
        raise "invalid body length" unless body.size >= 4
        req_id = IO::ByteFormat::LittleEndian.decode(UInt32, body[0..3])
        Log.debug { "enqueueing request #{req_id} (#{TL::Utils.name_for_id(req_id)}) to be serialized" }

        rx = Channel(Bytes | InvocationError).new
        @requests << Request.new(body, RequestState::NotSerialized, nil, rx)
        rx
      end

      def step_until_receive(rx : Channel(Bytes | InvocationError))
        loop do
          select
          when result = rx.receive
            case result
            in Bytes
              return result
            in InvocationError
              raise result
            end
          when timeout 50.milliseconds
            self.step
          end
        end
      rescue ex : Channel::ClosedError
        raise "request channel dropped before receiving a result"
      end

      def step
        self.try_fill_write

        # TODO: Probably want to properly set the request state on disconnect
        write_len = @write_buffer.size

        spawn do
          unless @write_buffer.empty?
            count = @socket.send(@write_buffer.rewind)
            @write_channel.send(count.to_u32)
          end
        end

        spawn do
          loop do
            str, addr = @socket.receive(MAXIMUM_DATA)
            @read_buffer.write(str.to_slice)
            @read_channel.send(str.size.to_u32)
          end
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
        # Since the buffer has a fixed size it will never be "empty",
        # but we can check if the current write_index is zero.
        return unless @write_buffer.empty?

        requests = @requests.select { |r| r.state == RequestState::NotSerialized }
        return if requests.empty?

        msg_ids = [] of MTProto::MsgId
        requests.each do |r|
          if msg_id = @mtp.push(r.body)
            msg_ids << msg_id
          else
            break
          end
        end

        @mtp_buffer.clear
        @mtp_buffer.write(@mtp.finalize)
        @mtp_buffer.rewind

        @write_buffer.clear
        @transport.pack(@mtp_buffer, @write_buffer)

        # NOTE: we have to use the FILTERED requests, not the saved ones.
        # The key to finding this was printing the old and new state (but took ~2h to find).
        # Otherwise we will likely change from Sent to Serialized and enter an infinite loop.
        # This will very easily cause transport flood (using self, trying to upload two files at once).
        # TODO add a test for this
        requests
          .zip(msg_ids)
          .each do |(req, msg_id)|
            req_id = IO::ByteFormat::LittleEndian.decode(UInt32, req.body[0..3])
            Log.debug { "serialized request #{req_id} (#{TL::Utils.name_for_id(req_id)}) with #{msg_id}" }
            req.state = RequestState::Serialized
            req.msg_id = msg_id
          end
      end

      def on_net_read(n : UInt32)
        return if n == 0

        Log.trace { "read #{n} bytes from the network" }
        Log.trace { "trying to unpack buffer of #{n} bytes..." }

        # Rewind the read buffer so we can read the data
        @read_buffer.rewind

        # TODO: the buffer might have multiple transport packets, what should happen with the
        # updates successfully read if subsequent packets fail to be deserialized properly?
        updates = [] of TL::Root::TypeUpdate
        until @read_buffer.pos >= @read_buffer.size
          @mtp_buffer.clear
          begin
            n = @transport.unpack(@read_buffer, @mtp_buffer)
            @read_buffer.skip(n)
            self.process_mtp_buffer(updates)
          rescue MTProto::MissingBytesError
            break
          end
        end

        @read_buffer.clear
        updates
      end

      def on_net_write(n : UInt32)
        Log.trace { "wrote #{n} bytes to the network" }

        @write_buffer.clear
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
        ping_id = Utils.generate_random_id
        Log.debug { "enqueuing keepalive ping #{ping_id}" }
        self.enqueue_body(TL::Root::PingDelayDisconnect.new(
          ping_id,
          disconnect_delay: NO_PING_DISCONNECT
        ).to_bytes)
        @next_ping = Time.local + PING_DELAY
      end

      def process_mtp_buffer(updates : Array(TL::Root::TypeUpdate))
        Log.debug { "deserializing valid transport packet..." }
        result = @mtp.deserialize(@mtp_buffer.to_slice)
        result.updates.each do |update|
          begin
            updates.push(TL::Root::TypeUpdate.tl_deserialize(IO::Memory.new(update)))
          rescue ex
            Log.warn { "telegram sent updates that failed to be deserialized: #{ex.message}" }
          end
        end

        result.rpc_results.each do |(msg_id, ret)|
          found = false
          @requests.each do |req|
            case req.state
            when RequestState::Serialized
              if req.msg_id == msg_id
                raise "got rpc result #{req.msg_id} for unsent request #{msg_id}"
              end
            when RequestState::Sent
              if req.msg_id == msg_id
                found = true
                bytes = case ret
                         when Bytes
                           raise "bad payload size" unless ret.size >= 4
                           res_id = IO::ByteFormat::LittleEndian.decode(UInt32, ret[0..3])
                           Log.debug { "got result #{res_id} (#{TL::Utils.name_for_id(res_id)}) for request #{msg_id}" }
                           ret
                         when MTProto::BadMessageError
                           # TODO: add a test to make sure we resend the request
                           Log.info { "#{ret}; re-sending request #{msg_id}" }
                           req.state = RequestState::NotSerialized
                           break
                         else
                           raise ret
                         end

                spawn req.result.send(bytes)
                @requests.delete(req)
                break
              end
            else
              # Nothing here for now
            end
          end

          unless found
            Log.info { "got rpc result #{msg_id} but no such request is saved" }
            raise "stopped"
          end
        end
      end
    end
  end
end
