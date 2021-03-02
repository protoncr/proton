require "compress/gzip"

module Proton::MTProto
  # This struct represents the following TL definition:
  #
  # ```tl
  # gzip_packed#3072cfa1 packed_data:string = Object;
  # ```
  class GzipPacked
    include TL::Serializable
    extend TL::Deserializable

    CONSTRUCTOR_ID = 0x3072cfa1_u32

    property packed_data : Bytes

    def initialize(@packed_data : Bytes)
    end

    def self.new(*, unpacked_data : Bytes)
      io = IO::Memory.new
      Compress::Gzip::Writer.open(io, Compress::Deflate::BEST_COMPRESSION) do |gz|
        gz.write(unpacked_data)
      end
      packed_data = io.rewind.to_slice
      new(packed_data)
    end

    def decompress
      io = IO::Memory.new(@packed_data)
      gzip = Compress::Gzip::Reader.new(io)
      gzip.gets_to_end.to_slice
    end

    def tl_serialize(io, boxed = false)
      CONSTRUCTOR_ID.tl_serialize(io)
      @packed_data.tl_serialize(io)
    end

    def self.tl_deserialize(io, boxed = false)
      constructor_id = UInt32.tl_deserialize(io)
      raise TL::Error::UnexpectedConstructor.new(constructor_id) unless constructor_id == CONSTRUCTOR_ID

      packed_data = Bytes.tl_deserialize(io)

      new(packed_data)
    end
  end
end
