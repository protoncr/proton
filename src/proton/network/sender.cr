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
      getter read_buffer : IO::Memory
      getter write_buffer : IO::Memory

      getter request_queue : RequestQueue(MTProto::MsgId, Bytes)
      getter next_ping : Time

      @receive_loop : Fiber?
      @mutex : Mutex
      @running : Bool

      # :nodoc:
      def initialize(socket, transport, mtp, mtp_buffer, *, next_ping = nil, request_queue = nil, read_buffer = nil, write_buffer = nil)
        @socket = socket
        @transport = transport
        @mtp = mtp
        @mtp_buffer = mtp_buffer
        @read_buffer = read_buffer || IO::Memory.new(MAXIMUM_DATA)
        @write_buffer = write_buffer || IO::Memory.new(MAXIMUM_DATA)

        @request_queue = request_queue || RequestQueue(MTProto::MsgId, Bytes).new
        @next_ping = next_ping || Time.local + PING_DELAY

        @mutex = Mutex.new
        @running = false

        self.start
      end

      # Initiate a connection using the given transport, Mtp instance, and socket address. This is meant mostly
      # for internal use. Returns a new `Sender` instance.
      def self.connect(transport : MTProto::BaseTransport, mtp : MTProto::MtpBase, addr : Socket::Address)
        Log.info { "Connecting..." }
        socket = Socket.tcp(Socket::Family::INET, blocking: false)
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
        response = sender.send!(request)
        Log.info { "gen auth key: starting step 2" }
        request, data = MTProto::Authentication.step2(data, response)
        Log.info { "gen auth key: sending step 2" }
        response = sender.send!(request)
        Log.info { "gen auth key: starting step 3" }
        request, data = MTProto::Authentication.step3(data, response)
        Log.info { "gen auth key: sending step 3" }
        response = sender.send!(request)
        Log.info { "gen auth key: completed generation" }

        # Stop the plain sender
        sender.stop

        auth = MTProto::Authentication.create_key(data, response)
        Log.info { "authorization key generated successfully" }

        builder = MTProto::MtpEncrypted.build
        builder.time_offset = auth.time_offset
        builder.first_salt = auth.first_salt
        mtp = builder.finish(auth.auth_key)

        new(
          socket: sender.socket,
          transport: transport,
          mtp: mtp,
          mtp_buffer: IO::Memory.new(MAXIMUM_DATA),
          next_ping: Time.local + PING_DELAY,
        )
      end

      def self.connect_with_auth(transport : MTProto::BaseTransport, addr : Socket::Address, auth_key : Bytes)
        self.connect(transport, MTProto::MtpEncrypted.build.finish(auth_key), addr)
      end

      def auth_key
        mtp = @mtp
        if mtp.is_a?(MTProto::MtpEncrypted)
          mtp.auth_key
        end
      end

      def running?
        @running
      end

      def stop
        @running = false
        @receive_loop = nil
      end

      def start
        @receive_loop = spawn receive_loop
        nil
      end

      def send(request : TL::TLRequest)
        body = request.to_bytes
        if msg_id = self.enqueue_body(body)
          response = @request_queue.get(msg_id)
          request.class.return_type.from_bytes(response)
        end
      end

      def send!(request : TL::TLRequest)
        send(request).not_nil!
      end

      # Send a raw request to the server
      def send(body : Bytes) : Bytes?
        body = body.is_a?(TL::TLRequest) ? body.to_bytes : body
        if msg_id = self.enqueue_body(body)
          @request_queue.get(msg_id)
        end
      end

      def send!(body : Bytes) : Bytes
        send(body).not_nil!
      end

      def enqueue_body(body : Bytes)
        raise "invalid body length" unless body.size >= 4

        # Generate a request ID for this request.
        const_id = IO::ByteFormat::LittleEndian.decode(UInt32, body[0..3])
        Log.debug { "enqueueing request 0x#{const_id.to_s(16)} (#{TL::Utils.name_for_id(const_id)}) to be serialized" }

        # Serialize the body using the Mtp and Transport
        msg_id = self.serialize_request(body)

        unless msg_id.nil?
          Log.debug { "serialized request 0x#{const_id.to_s(16)} (#{TL::Utils.name_for_id(const_id)}) with msg_id #{msg_id}" }

          # Create an entry in the queue for this request.
          @request_queue.set(msg_id)

          # Send the serialized request to the server
          spawn self.internal_send
          Log.debug { "sent request 0x#{const_id.to_s(16)} (#{TL::Utils.name_for_id(const_id)}) with msg_id #{msg_id}" }
        end

        # Return the message id
        msg_id
      end

      def receive_loop
        @running = true
        while @running
          msg, _ = @socket.receive(MAXIMUM_DATA)
          data = msg.to_slice
          if data.size > 0
            @read_buffer.write(data)
            self.on_net_read(data.size)
          end
        end
        Log.debug { "receive loop stopped" }
      end

      def serialize_request(body : Bytes)
        msg_id = @mtp.push(body)

        @mtp_buffer.clear
        @mtp_buffer.write(@mtp.finalize)

        @write_buffer.clear
        @transport.pack(@mtp_buffer, @write_buffer)

        msg_id
      end

      def on_net_read(n)
        Log.trace { "received #{n} bytes from network" }

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
            Log.trace { "unpacked #{n}/#{@read_buffer.size} bytes..." }
            self.process_mtp_buffer(updates)
          rescue MTProto::MissingBytesError
            break
          end
        end

        @read_buffer.clear
        updates
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
          bytes = case ret
                  when Bytes
                    raise "bad payload size" unless ret.size >= 4
                    const_id = IO::ByteFormat::LittleEndian.decode(UInt32, ret[0..3])
                    Log.debug { "got result 0x#{const_id.to_s(16)} (#{TL::Utils.name_for_id(const_id)}) for request #{msg_id}" }
                    ret
                  when MTProto::BadMessageError
                    # TODO: Resend the request
                    raise ret
                  else
                    raise ret
                  end

          @request_queue.answer(msg_id, bytes)
        end
      end

      def internal_send
        @write_buffer.rewind
        @socket.send(@write_buffer)
        @socket.flush
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
    end
  end
end
