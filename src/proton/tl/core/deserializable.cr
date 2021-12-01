module Proton::TL
  module Deserializable
    # Serializes the instance into the given io.
    abstract def tl_deserialize(io : IO)

    def from_bytes(bytes)
      io = IO::Memory.new(bytes)
      self.tl_deserialize(io)
    end
  end
end

struct Bool
  extend Proton::TL::Deserializable

  # Deserializes a boolean according to the following definitions:
  #
  # * `boolFalse#bc799737 = Bool;` deserializes into `false`.
  # * `boolTrue#997275b5 = Bool;` deserializes into `true`.
  def self.tl_deserialize(io : IO)
    id = UInt32.from_io(io, IO::ByteFormat::LittleEndian)
    case id
    when 0x997275b5_u32
      true
    when 0xbc799737_u32
      false
    else
      raise Proton::TL::UnexpectedConstructorError.new(id)
    end
  end
end

abstract struct Int
  extend Proton::TL::Deserializable

  def self.tl_deserialize(io : IO)
    self.from_io(io, IO::ByteFormat::LittleEndian)
  end
end

abstract struct Float
  extend Proton::TL::Deserializable

  def self.tl_deserialize(io : IO)
    self.from_io(io, IO::ByteFormat::LittleEndian)
  end
end

struct BigInt < Int
  extend Proton::TL::Deserializable

  def self.tl_deserialize(io : IO, size : Int32 = 128)
    raise "Invalid BigInt size: #{size}" unless size.in?([128, 256])

    if size === 128
      return IO::ByteFormat::LittleEndian.decode_128(BigInt, io)
    elsif size === 256
      return IO::ByteFormat::LittleEndian.decode_256(BigInt, io)
    end

    raise "Unreachable"
  end

  def self.from_bytes(bytes, size = 128)
    io = IO::Memory.new(bytes)
    self.tl_deserialize(io, size)
  end
end

class Array(T)
  extend Proton::TL::Deserializable

  def self.tl_deserialize(io : IO, bare : Bool = false)
    unless bare
      id = UInt32.tl_deserialize(io)
      raise Proton::TL::UnexpectedConstructorError.new(id) unless id == 0x1cb5c415_u32
    end
    len = UInt32.tl_deserialize(io)
    self.new(len) do |_|
      T.tl_deserialize(io).as(T)
    end
  end

  def self.from_bytes(bytes, bare = false)
    io = IO::Memory.new(bytes)
    self.tl_deserialize(io, bare)
  end
end

class String
  extend Proton::TL::Deserializable

  def self.tl_deserialize(io : IO)
    self.new(Bytes.tl_deserialize(io))
  end
end

struct Slice(T)
  extend Proton::TL::Deserializable

  def self.tl_deserialize(io : IO)
    first_byte = io.read_byte.not_nil!
    len, padding = if first_byte == 254
                     buffer = Bytes.new(3)
                     io.read(buffer)
                     len = (buffer[0].to_u32) | ((buffer[1].to_u32) << 8) | ((buffer[2].to_u32) << 16)
                     {len, len % 4}
                   else
                     len = first_byte.to_u32
                     {len, (len + 1) % 4}
                   end

    result = Bytes.new(len)
    io.read(result)

    if padding > 0
      (4 - padding).times do |_|
        io.read_byte
      end
    end

    result
  end
end
