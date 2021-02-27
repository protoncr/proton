module Proton::TL
  module Serializable
    # Serializes the instance into the given io.
    abstract def tl_serialize(io : IO, boxed = false)

    def to_bytes(boxed = true)
      io = IO::Memory.new
      self.tl_serialize(io, boxed)
      io.to_slice
    end
  end
end

struct Bool
  include Proton::TL::Serializable

  # Serializes the boolean according to the following definitions:
  #
  # * `false` is serialized as `boolFalse#bc799737 = Bool;`.
  # * `true` is serialized as `boolTrue#997275b5 = Bool;`.
  def tl_serialize(io : IO, boxed = false)
    io.write_bytes(self ? 0x997275b5_u32 : 0xbc799737_u32)
  end
end

abstract struct Int
  include Proton::TL::Serializable

  def tl_serialize(io : IO, boxed = false)
    io.write_bytes(self, IO::ByteFormat::LittleEndian)
  end
end

struct Proton::TL::I128
  include Proton::TL::Serializable

  def tl_serialize(io : IO, boxed = false)
    io.write_bytes(self, IO::ByteFormat::LittleEndian)
  end
end

struct Proton::TL::I256
  include Proton::TL::Serializable

  def tl_serialize(io : IO, boxed = false)
    io.write_bytes(self, IO::ByteFormat::LittleEndian)
  end
end

class Array(T)
  include Proton::TL::Serializable

  def tl_serialize(io : IO, boxed = false)
    0x1cb5c415_u32.tl_serialize(io) unless boxed
    self.size.to_u32.tl_serialize(io)
    self.each do |x|
      x.tl_serialize(io)
    end
  end
end

class String
  include Proton::TL::Serializable

  def tl_serialize(io : IO, boxed = false)
    self.to_slice.tl_serialize(io)
  end
end

struct Slice(T)
  include Proton::TL::Serializable

  def tl_serialize(io : IO, boxed = false)
    len = if self.size <= 253
            io.write_bytes(self.size.to_u8)
            self.size + 1
          else
            io.write_bytes(254_u8)
            io.write_bytes((self.size & 0xff).to_u8)
            io.write_bytes(((self.size >> 8) & 0xff).to_u8)
            io.write_bytes(((self.size >> 16) & 0xff).to_u8)
            self.size
          end

    padding = (4 - (len % 4)) % 4
    io.write(self)
    padding.times { io.write_bytes(0_u8) }
  end
end
