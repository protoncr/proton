module Proton::TL
  module Serializable
    # Serializes the instance into the given io.
    abstract def tl_serialize(io : IO)

    def to_bytes
      io = IO::Memory.new
      self.tl_serialize(io)
      io.to_slice
    end
  end
end

struct Nil
  include Proton::TL::Serializable

  def tl_serialize(io : IO)
  end
end

struct Bool
  include Proton::TL::Serializable

  # Serializes the boolean according to the following definitions:
  #
  # * `false` is serialized as `boolFalse#bc799737 = Bool;`.
  # * `true` is serialized as `boolTrue#997275b5 = Bool;`.
  def tl_serialize(io : IO)
    io.write_bytes(self ? 0x997275b5_u32 : 0xbc799737_u32)
  end
end

abstract struct Int
  include Proton::TL::Serializable

  def tl_serialize(io : IO)
    io.write_bytes(self, IO::ByteFormat::LittleEndian)
  end
end

abstract struct Float
  include Proton::TL::Serializable

  def tl_serialize(io : IO)
    io.write_bytes(self, IO::ByteFormat::LittleEndian)
  end
end

struct BigInt < Int
  include Proton::TL::Serializable

  def tl_serialize(io : IO, size : Int32 = 128)
    raise "Invalid BigInt size: #{size}" unless size.in?([128, 256])

    if size === 128
      return IO::ByteFormat::LittleEndian.encode_128(self, io)
    elsif size === 256
      return IO::ByteFormat::LittleEndian.encode_256(self, io)
    end

    raise "Unreachable"
  end

  def to_bytes(size = 128)
    io = IO::Memory.new
    self.tl_serialize(io, size)
    io.to_slice
  end
end

class Array(T)
  include Proton::TL::Serializable

  def tl_serialize(io : IO, bare : Bool = false)
    0x1cb5c415_u32.tl_serialize(io) unless bare
    self.size.to_u32.tl_serialize(io)
    self.each do |x|
      x.tl_serialize(io)
    end
  end

  def to_bytes(bare = false)
    io = IO::Memory.new
    self.tl_serialize(io, bare)
    io.to_slice
  end
end

class String
  include Proton::TL::Serializable

  def tl_serialize(io : IO)
    self.to_slice.tl_serialize(io)
  end
end

struct Slice(T)
  include Proton::TL::Serializable

  def tl_serialize(io : IO)
    len = if self.bytesize == 0
            io.write(Bytes[0, 0, 0, 0])
            4
          elsif self.bytesize <= 253
            io.write_bytes(self.bytesize.to_u8)
            self.bytesize + 1
          else
            io.write_bytes(254_u8)
            io.write_bytes((self.bytesize & 0xff).to_u8)
            io.write_bytes(((self.bytesize >> 8) & 0xff).to_u8)
            io.write_bytes(((self.bytesize >> 16) & 0xff).to_u8)
            self.bytesize
          end

    padding = (4 - (len % 4)) % 4
    io.write(self)
    padding.times { io.write_bytes(0_u8) }
  end
end
