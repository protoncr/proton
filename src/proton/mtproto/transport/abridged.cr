module Proton
  module MTProto
    # The lightest MTProto transport protocol available. This is an
    # implementation of the [abridged transport].
    #
    # * Overhead: very small.
    # * Minimum envelope length: 1 byte.
    # * Maximum envelope length: 4 bytes.
    #
    # It serializes the input payload as follows, if the length is small enough:
    #
    # ```text
    # +-+----...----+
    # |L|  payload  |
    # +-+----...----+
    #  ^ 1 byte
    # ```
    #
    # Otherwise:
    #
    # ```text
    # +----+----...----+
    # | len|  payload  |
    # +----+----...----+
    #  ^^^^ 4 bytes
    # ```
    #
    # [abridged transport]: https://core.telegram.org/mtproto/mtproto-transports#abridged
    class AbridgedTransport < BaseTransport
      getter init : Bool

      def initialize
        @init = false
      end

      def pack(input : IO::Memory, output : IO::Memory) : UInt32
        raise "Invalid input length #{input.size} (input must be divisible by 4)" if input.size % 4 != 0

        if (!init)
          output.write_bytes(0xEF_u8, IO::ByteFormat::LittleEndian)
          @init = true
        end

        len = input.size // 4
        if len < 127
          output.write_bytes(len.to_u8, IO::ByteFormat::LittleEndian)
          output.write(input.to_slice)
        else
          output.write_bytes(0x7f_u8, IO::ByteFormat::LittleEndian)
          output.write_bytes(len.to_u32, IO::ByteFormat::LittleEndian)
          output.seek(-1, IO::Seek::Current) # We only want 3 of the 4 u32 bytes
          output.write(input.to_slice)
        end

        input.size.to_u32
      end

      def unpack(input : IO::Memory, output : IO::Memory) : UInt32
        if input.empty?
          raise MissingBytesError.new
        end

        needle = IO::Memory.new(input.to_slice[..])
        len = needle.read_bytes(UInt8)
        len = if len < 127
                header_len = 1
                len.to_u32
              else
                if needle.size < 4
                  raise MissingBytesError.new
                end

                header_len = 4
                needle.read_bytes(UInt32, IO::ByteFormat::LittleEndian)
              end

        len = len * 4
        if needle.size < header_len + len
          raise MissingBytesError.new
        end

        needle.seek(header_len, IO::Seek::Set)
        n = IO.copy(needle, output).to_u32
        UInt32.new(header_len + n)
      end
    end
  end
end
