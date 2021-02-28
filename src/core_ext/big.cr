lib LibGMP
  # https://gmplib.org/manual/Integer-Import-and-Export
  fun import = __gmpz_import(rop : MPZ*, count : SizeT, order : Int, size : SizeT, endian : Int, nails : SizeT, op : Void*)
  fun export = __gmpz_export(rop : Void*, countp : SizeT*, order : Int, size : SizeT, endian : Int, nails : SizeT, op : MPZ*) : Void*
end

struct BigInt < Int
  def self.new(bytes : Bytes, byte_format : IO::ByteFormat = IO::ByteFormat::LittleEndian)
    new do |mpz|
      endian = byte_format == IO::ByteFormat::LittleEndian ? 1 : -1
      LibGMP.import(mpz, bytes.size, -endian, 1, endian, 0, bytes)
    end
  end

  def to_slice(byte_format : IO::ByteFormat = IO::ByteFormat::LittleEndian)
    bytes = Bytes.new((bit_length / 8).ceil.to_i)
    endian = byte_format == IO::ByteFormat::LittleEndian ? 1 : -1
    LibGMP.export(bytes, out count, -endian, 1, endian, 0, self)
    bytes
  end
end
