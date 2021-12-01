require "big"

module IO::ByteFormat
  abstract def encode_128(int : BigInt, io : IO)
  abstract def encode_256(int : BigInt, io : IO)
  abstract def encode_128(int : BigInt, bytes : Bytes)
  abstract def encode_256(int : BigInt, bytes : Bytes)
  abstract def decode_128(int : BigInt.class, io : IO)
  abstract def decode_256(int : BigInt.class, io : IO)
  abstract def decode_128(int : BigInt.class, bytes : Bytes)
  abstract def decode_256(int : BigInt.class, bytes : Bytes)

  {% for mod in %w(LittleEndian BigEndian) %}
    module {{mod.id}}
      {% for size, i in [128, 256] %}
        {% bytesize = size // 8 %}

        def self.encode_{{ size }}(int : BigInt, io : IO)
          endian = self == LittleEndian ? 1 : -1
          bytes = Bytes.new({{ bytesize }})
          self.encode_{{ size }}(int, bytes)
          io.write(bytes)
        end

        def self.encode_{{ size }}(int : BigInt, bytes : Bytes)
          endian = self == LittleEndian ? 1 : -1
          LibGMP.export(bytes[0...{{ bytesize }}], out count, -endian, 1, endian, 0, int)
        end

        def self.decode_{{ size }}(type : BigInt.class, io : IO)
          endian = self == LittleEndian ? 1 : -1
          bytes = Bytes.new({{ bytesize }})
          io.read(bytes)
          BigInt.new do |mpz|
            LibGMP.import(mpz, {{ bytesize }}, -endian, 1, endian, 0, bytes)
          end
        end

        def self.decode_{{ size }}(type : BigInt.class, bytes : Bytes)
          endian = self == LittleEndian ? 1 : -1
          BigInt.new do |mpz|
            LibGMP.import(mpz, {{ bytesize }}, -endian, 1, endian, 0, bytes)
          end
        end

      {% end %}
    end
  {% end %}
end
