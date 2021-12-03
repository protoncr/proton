module Proton
  module MTProto
    class MtpPlain < MtpBase
      getter buffer : IO::Memory

      def initialize
        @buffer = IO::Memory.new
      end

      # Wraps a request's data into a plain message (also known as
      # [unencrypted messages]), and returns its serialized contents.
      #
      # Plain messages may be used for requests that don't require an
      # authorization key to be present, such as those needed to generate
      # the authorization key itself.
      #
      # [unencrypted messages]: https://core.telegram.org/mtproto/description#unencrypted-message
      def push(request : Bytes) : MsgId?
        unless @buffer.empty?
          return nil
        end

        @buffer.write_bytes(0_i64, IO::ByteFormat::LittleEndian) # auth_key_id = 0

        # Even though https://core.telegram.org/mtproto/samples-auth_key
        # seems to imply the `msg_id` has to follow some rules, there is
        # no need to generate a valid `msg_id`, it seems. Just use `0`.
        @buffer.write_bytes(0_i64, IO::ByteFormat::LittleEndian) # msg_id = 0

        @buffer.write_bytes(request.size.to_i32, IO::ByteFormat::LittleEndian) # msg_data_length
        @buffer.write(request)

        MsgId.new(0)
      end

      def finalize : Bytes
        slice = @buffer.to_slice[..]
        @buffer.clear
        slice
      end

      # Validates that the returned data is a correct plain message, and
      # if it is, the method returns the inner contents of the message.
      #
      # [`serialize_plain_message`]: #method.serialize_plain_message
      def deserialize(payload : Bytes) : Deserialization
        Utils.check_message_buffer(payload)

        buf = IO::Memory.new(payload)
        auth_key_id = buf.read_bytes(Int64, IO::ByteFormat::LittleEndian)
        if auth_key_id != 0
          raise BadAuthKeyError.new(got: auth_key_id, expected: 0)
        end

        msg_id = buf.read_bytes(Int64, IO::ByteFormat::LittleEndian)
        # We can't validate it's close to our system time because our sytem
        # time may be wrong at this point (it only matters once encrypted
        # communication begins). However, we can validate the following:
        #
        # > server message identifiers modulo 4 yield 1 if
        # > the message is a response to a client message
        # https://core.telegram.org/mtproto/description#message-identifier-msg-id
        if msg_id <= 0 || (msg_id % 4) != 1
          raise BadMessageIdError.new(got: msg_id)
        end

        len = buf.read_bytes(Int32, IO::ByteFormat::LittleEndian)
        raise NegativeMessageLengthError.new(got: len) if len <= 0
        raise TooLongMessageLengthError.new(got: len.to_u32, max: payload.size - 20) if (20 + len) > payload.size

        Deserialization.new(
          rpc_results: RpcResult.new(MsgId.new(0), payload[20...(20 + len)]),
          updates: [] of Bytes
        )
      end
    end
  end
end
