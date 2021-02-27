require "big"

lib LibGMP
  # https://gmplib.org/manual/Integer-Import-and-Export
  fun import = __gmpz_import(rop : MPZ*, count : SizeT, order : Int, size : SizeT, endian : Int, nails : SizeT, op : Void*)
  fun export = __gmpz_export(rop : Void*, countp : SizeT*, order : Int, size : SizeT, endian : Int, nails : SizeT, op : MPZ*) : Void*
end

module Proton::TL
  struct I128
    MAX = I128.new("340282366920938463463374607431768211455")
    MIN = I128.new("0")
  end

  struct I256
    MAX = I256.new("115792089237316195423570985008687907853269984665640564039457584007913129639935")
    MIN = I256.new("0")
  end

  {% for i in [128, 256] %}
    struct I{{ i.id }}
      MAX_BIT_LENGTH = {{ i.id }}

      @big : BigInt
      delegate :to_s, :inspect, :==, to: @big
      forward_missing_to @big

      def initialize(str : String, base = 10)
        @big = BigInt.new(str, base)
        if @big.bit_length > MAX_BIT_LENGTH
          raise OverflowError.new
        end
      end

      def initialize(num)
        @big = BigInt.new(num)
        if @big.bit_length > MAX_BIT_LENGTH
          raise OverflowError.new
        end
      end

      def self.new(&block : LibGMP::MPZ* ->)
        big = BigInt.new { |mpz| block.call(mpz) }
        if big.bit_length > MAX_BIT_LENGTH
          raise OverflowError.new
        end
        big
      end

      def to_io(io : IO, format : IO::ByteFormat)
        format.encode(self, io)
      end

      def self.from_io(io : IO, format : IO::ByteFormat)
        format.decode(self, io)
      end
    end
  {% end %}
end

module IO::ByteFormat
  abstract def encode(int : Proton::TL::I128, io : IO)
  abstract def encode(int : Proton::TL::I256, io : IO)
  abstract def encode(int : Proton::TL::I128, bytes : Bytes)
  abstract def encode(int : Proton::TL::I256, bytes : Bytes)
  abstract def decode(int : Proton::TL::I128.class, io : IO)
  abstract def decode(int : Proton::TL::I256.class, io : IO)
  abstract def decode(int : Proton::TL::I128.class, bytes : Bytes)
  abstract def decode(int : Proton::TL::I256.class, bytes : Bytes)

  {% for mod in %w(LittleEndian BigEndian) %}
    module {{mod.id}}
      {% for type, i in %w(Proton::TL::I128 Proton::TL::I256) %}
        {% bytesize = 2 ** (i + 16 // 4) %}

        def self.encode(int : {{ type.id }}, io : IO)
          endian = self == LittleEndian ? 1 : -1
          bytes = Bytes.new({{ bytesize }})
          self.encode(int, bytes)
          io.write(bytes)
        end

        def self.encode(int : {{ type.id }}, bytes : Bytes)
          endian = self == LittleEndian ? 1 : -1
          LibGMP.export(bytes[0...{{ bytesize }}], out count, -endian, 1, endian, 0, int)
        end

        def self.decode(type : {{ type.id }}.class, io : IO)
          endian = self == LittleEndian ? 1 : -1
          bytes = Bytes.new({{ bytesize }})
          io.read(bytes)
          {{ type.id }}.new do |mpz|
            LibGMP.import(mpz, {{ bytesize }}, -endian, 1, endian, 0, bytes)
          end
        end

        def self.decode(type : {{ type.id }}.class, bytes : Bytes)
          endian = self == LittleEndian ? 1 : -1
          {{ type.id }}.new do |mpz|
            LibGMP.import(mpz, {{ bytesize }}, -endian, 1, endian, 0, bytes)
          end
        end

      {% end %}
    end
  {% end %}
end
