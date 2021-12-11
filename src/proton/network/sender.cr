require "socket"
require "nbchannel"

module Proton
  module Network
    Log = ::Log.for(self)

    enum RequestState
      NotSerialized
      Serialized
      Sent
    end

    class Request
      property body : Bytes
      property state : RequestState
      property msg_id : Int64?
      property result : Channel(Bytes | InvocationError)

      def initialize(@body : Bytes, @state : RequestState = RequestState::NotSerialized, @msg_id : Int64? = nil, @result : Channel(Bytes | InvocationError) = Channel.new)
      end
    end

    class Enqueuer
      def initialize(@rx : Channel(Request))
      end

      def enqueue(req : TL::RemoteCallable)
        body = req.to_bytes
        raise "request body to small" unless body.size >= 4
        req_id = IO::ByteFormat::LittleEndian.decode(UInt32, body[..3])
        Log.debug { "enqueueing request #{TL::Utils.name_for_id(req_id)} to be serialized" }
        tx = Channel(Bytes | InvocationError).new
        @rx.send(Request.new(body, RequestState::NotSerialized, nil, tx))
        tx
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
      PING_DELAY = 15.seconds

      # After how many seconds should the server close the connection when we send a ping?
      #
      # What this value essentially means is that we have `NO_PING_DISCONNECT - PING_DELAY` seconds
      # to keep sending pings, or the server will close the connection.
      #
      # Pings ensure the connection is kept active, and the delayed disconnect ensures the messages
      # are getting through consistently enough.
      NO_PING_DISCONNECT = 75

      getter socket : Socket
      getter transport : MTProto::BaseTransport
      getter mtp : MTProto::MtpBase
      getter mtp_buffer : IO::Memory

      getter requests : Array(Request)
      getter request_rx : Channel(Request)
      getter read_buffer : IO::Memory
      getter write_buffer : IO::Memory

      getter next_ping : Time

      # :nodoc:
      def initialize(socket, transport, mtp, mtp_buffer, requests, request_rx, next_ping, read_buffer, write_buffer)
        @socket = socket
        @transport = transport
        @mtp = mtp
        @mtp_buffer = mtp_buffer
        @requests = requests
        @request_rx = request_rx
        @read_buffer = read_buffer
        @write_buffer = write_buffer
        @next_ping = next_ping

        spawn(name: "send") { self.send_loop }
        spawn(name: "receive") { self.receive_loop }
      end

      # Initiate a connection using the given transport, Mtp instance, and socket address. This is meant mostly
      # for internal use. Returns a new `Sender` instance.
      def self.connect(transport : MTProto::BaseTransport, mtp : MTProto::MtpBase, addr : Socket::Address)
        Log.info { "Connecting..." }
        socket = TCPSocket.new(Socket::Family::INET, blocking: false)
        socket.connect(addr)
        Log.info { "Connected to #{addr.to_s}" }

        tx = Channel(Request).new

        {
          Sender.new(
            socket: socket,
            transport: transport,
            mtp: mtp,
            mtp_buffer: IO::Memory.new(MAXIMUM_DATA),

            requests: [] of Request,
            request_rx: tx,
            next_ping: Time.utc + PING_DELAY,

            read_buffer: IO::Memory.new(MAXIMUM_DATA),
            write_buffer: IO::Memory.new(MAXIMUM_DATA),
          ),
          Enqueuer.new(tx),
        }
      end

      def auth_key
        mtp = @mtp
        if mtp.is_a?(MTProto::MtpEncrypted)
          mtp.auth_key
        end
      end

      def invoke(req : TL::TLRequest)
        body = self.send(req.to_bytes)
        req.class.return_type.from_bytes(body)
      end

      def send(body : Bytes)
        rx = self.enqueue_body(body)
        body = rx.receive
        if body.is_a?(InvocationError)
          raise body
        else
          body
        end
      end

      def send_loop
        loop do
          self.try_fill_write

          if @write_buffer.empty?
            # Check if we need to send a ping
            if Time.utc >= @next_ping
              self.on_ping_timeout
            end
          else
            count = @socket.send(@write_buffer.to_slice)
            self.on_net_write(count)
          end
          sleep 0.01
        end
      end

      def receive_loop
        buffer = Bytes.new(MAXIMUM_DATA)
        loop do
          puts "waiting on network"
          count, addr = @socket.receive(buffer)
          @read_buffer.write(buffer[...count])
          self.on_net_read(buffer.bytesize)
          buffer.clear
          sleep 0.01
        end
      end

      def enqueue_body(body : Bytes)
        raise "body too small" unless body.size >= 4
        req_id = IO::ByteFormat::LittleEndian.decode(UInt32, body[..3])
        Log.debug { "enqueueing request #{TL::Utils.name_for_id(req_id)} to be serialized" }
        rx = Channel(Bytes | InvocationError).new(1)
        @requests << Request.new(body, RequestState::NotSerialized, nil, rx)
        rx
      end

      def try_fill_write
        if @write_buffer.empty?
          # Pick out only requests that are unserialized
          # TODO: add a test to make sure we only ever send the same request once
          requests = @requests.select { |req| req.state == RequestState::NotSerialized }

          # TODO: add a test to make sure we don't send empty data
          return if requests.empty?

          msg_ids = requests.reduce([] of Int64) do |acc, req|
            msg_id = @mtp.push(req.body)
            acc << msg_id if msg_id
            acc
          end

          @mtp_buffer.write(@mtp.finalize)
          @write_buffer.clear
          @transport.pack(@mtp_buffer, @write_buffer)

          requests.zip(msg_ids).each do |(req, msg_id)|
            raise "request body too small" unless req.body.size >= 4
            req_id = IO::ByteFormat::LittleEndian.decode(UInt32, req.body[..3])

            Log.debug { "serialized request #{req_id} (#{TL::Utils.name_for_id(req_id)}) with #{msg_id}" }

            req.msg_id = msg_id
            req.state = RequestState::Serialized
          end
        end
      end

      def on_net_read(n)
        Log.trace { "read #{n} bytes from the network" }
        Log.trace { "trying to unpack a buffer of #{@read_buffer.size} bytes" }

        # We're going to read everything, so rewind the read_buffer first
        @read_buffer.rewind

        updates = [] of TL::Root::TypeUpdate
        while @read_buffer.pos < @read_buffer.size
          @mtp_buffer.clear
          begin
            n = @transport.unpack(@read_buffer, @mtp_buffer)
            @read_buffer.skip(n)
            self.process_mtp_buffer(updates)
          rescue ex : MTProto::MissingBytesError
            @read_buffer = IO::Memory.new(@read_buffer.to_slice[@read_buffer.pos..])
            break
          end
        end

        @read_buffer.clear
        updates
      end

      def on_net_write(n)
        Log.trace { "wrote #{n} bytes to the network (#{@write_buffer.pos}/#{@write_buffer.size})" }

        @write_buffer.clear

        @requests.each do |req|
          if req.state == RequestState::Serialized
            Log.debug { "sent request with #{req.msg_id}" }
            req.state = RequestState::Sent
          end
        end
      end

      def on_ping_timeout
        # TODO
        Log.debug { "hit ping timeout" }
        @next_ping = Time.utc + PING_DELAY
      end

      private def process_mtp_buffer(updates : Array(TL::Root::TypeUpdate))
        Log.debug { "deserializing valid transport packet..." }
        result = @mtp.deserialize(@mtp_buffer.to_slice)

        result.updates.each do |update|
          begin
            updates << TL::Root::TypeUpdate.from_bytes(update)
          rescue ex
            Log.warn(exception: ex) { "telegram sent updates that failed to be deserialized" }
          end
        end

        result.rpc_results.each do |(msg_id, ret)|
          found = false
          @requests.each do |req|
            case req.state
            in RequestState::Serialized
              if req.msg_id == msg_id
                raise "got rpc result #{msg_id} for unsent request #{req.msg_id}"
              end

            in RequestState::Sent
              if req.msg_id == msg_id
                found = true
                result = case ret
                  when Bytes
                    raise "result too small" unless ret.size >= 4
                    res_id = IO::ByteFormat::LittleEndian.decode(UInt32, ret[..3])
                    Log.debug { "got result #{res_id} (#{TL::Utils.name_for_id(res_id)}) for request #{msg_id}" }
                    ret
                  when MTProto::RpcError
                    raise ret
                  when MTProto::DroppedError
                    raise ret
                  when MTProto::DeserializeError
                    raise ret
                  when MTProto::BadMessageError
                    raise ret
                  else
                    raise "unreachable"
                  end

                req.result.send(result)
                @requests.delete(req)
                break
              end

            in RequestState::NotSerialized
            end
          end

          if !found
            Log.warn { "got rpc result #{msg_id}, but no such request is saved" }
          end
        end

        nil
      end
    end

    # Initiate a connection using the given transport, Mtp instance, and socket address; then process
    # the authentication flow. Returns a new `Sender` instance.
    def self.connect(transport : MTProto::BaseTransport, addr : Socket::Address)
      sender, enqueuer = Sender.connect(transport, MTProto::MtpPlain.new, addr)

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
      mtp = builder.finish(auth.auth_key)

      {
        Sender.new(
          socket: sender.socket,
          transport: sender.transport,
          mtp: mtp,
          mtp_buffer: sender.mtp_buffer,

          requests: sender.requests,
          request_rx: sender.request_rx,
          next_ping: sender.next_ping,

          read_buffer: IO::Memory.new(Sender::MAXIMUM_DATA),
          write_buffer: IO::Memory.new(Sender::MAXIMUM_DATA),
        ),
        enqueuer,
      }
    end

    def self.connect_with_auth(transport : MTProto::BaseTransport, addr : Socket::Address, auth_key : Bytes)
      self.connect(transport, MTProto::MtpEncrypted.build.finish(auth_key), addr)
    end
  end
end
