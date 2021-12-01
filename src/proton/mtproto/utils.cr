module Proton
  module MTProto
    module Utils
      extend self

      def check_message_buffer(message : Bytes)
        if message.size == 4
          # Probably a negative HTTP error code
          raise MTProto::TransportError.new(code: Int32.from_bytes(message))
        elsif message.size < 20
          raise MTProto::MessageBufferTooSmallError.new
        end
      end

      def gzip_io(input : IO)
        output = IO::Memory.new
        Compress::Gzip::Writer.open(output) do |gz|
          IO.copy(input, gz)
        end
        output.to_slice
      end

      def ungzip_io(input : IO)
        data = nil
        Compress::Gzip::Reader.open(input) do |gz|
          data = gz.gets_to_end
        end
        data.not_nil!
      end
    end
  end
end
