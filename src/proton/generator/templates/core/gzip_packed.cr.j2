module Proton
  module TL
    class GzipPacked < TLObject
      CONSTRUCTOR_ID = 0x3072cfa1

      getter data : Bytes

      def initialize(@data : Bytes)
      end

      # Calls bytes (request), and based on a certain threshold,
      # optionally gzips the resulting data. If the gzipped data is
      # smaller than the original byte array, this is returned instead.
      #
      # Note: this only applies to content related requests.
      def self.gzip_if_smaller(content_related, data : Bytes)
        if content_related && data.bytesize > 512
          input = IO::Memory.new(data)
          gzipped = TL::Utils.gzip_io(input)
          if gzipped.bytesize < data.bytesize
            gzipped
          else
            data
          end
        else
          data
        end
      end

      def tl_serialize(io : IO, bare = true)
        CONSTRUCTOR_ID.tl_deserialize(io, true) unless bare
        @data.tl_serialize(io, true)
      end

      def self.tl_deserialize(io : IO, bare = true)
        data = TL::Utils.ungzip_io(io)
        new(data)
      end
    end
  end
end