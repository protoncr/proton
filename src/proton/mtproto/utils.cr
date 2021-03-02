module Proton::MTProto
  module Utils
    def self.check_message_buffer(message : Bytes)
      if message.size == 4
        # Probably a negative HTTP error code
        raise Errors::TransportError.new(code: IO::ByteFormat::LittleEndian.decode(UInt32, message))
      elsif message.size < 20
        raise Errors::MessageBufferTooSmall.new
      else
        true
      end
    end
  end
end
