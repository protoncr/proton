module Proton
  module MTProto
    # A light MTProto transport protocol available that guarantees data padded
    # to 4 bytes. This is an implementation of the [intermediate transport].
    #
    # * Overhead: small.
    # * Minimum envelope length: 4 bytes.
    # * Maximum envelope length: 4 bytes.
    #
    # It serializes the input payload as follows:
    #
    # ```text
    # +----+----...----+
    # | len|  payload  |
    # +----+----...----+
    #  ^^^^ 4 bytes
    # ```
    #
    # [intermediate transport]: https://core.telegram.org/mtproto/mtproto-transports#intermediate
    class IntermediateTransport < BaseTransport
      getter init : Bool

      def initialize
        @init = false
      end

      def pack(input : IO::Memory, output : IO::Memory) : UInt32
        raise "Invalid input length #{input.size} (input must be divisible by 4)" if input.size % 4 != 0

        if (!init)
          output.write_bytes(0xEEEEEEEE_u32, IO::ByteFormat::LittleEndian)
          @init = true
        end

        output.write_bytes(input.size.to_u32, IO::ByteFormat::LittleEndian)
        IO.copy(input, output).to_u32
      end

      def unpack(input : IO::Memory, output : IO::Memory) : UInt32
        if input.size < 4
          raise MissingBytesError.new
        end

        needle = IO::Memory.new(input.to_slice[..])
        needle.rewind

        len = needle.read_bytes(UInt32, IO::ByteFormat::LittleEndian)
        if needle.size < len
          raise MissingBytesError.new
        end

        IO.copy(needle, output).to_u32
      end
    end
  end
end
