require "digest/crc32"

module Proton
  module MTProto
    # The basic MTProto transport protocol. This is an implementation of the
    # [full transport].
    #
    # * Overhead: medium
    # * Minimum envelope length: 12 bytes.
    # * Maximum envelope length: 12 bytes.
    #
    # It serializes the input payload as follows:
    #
    # ```text
    # +----+----+----...----+----+
    # | len| seq|  payload  | crc|
    # +----+----+----...----+----+
    #  ^^^^ 4 bytes
    # ```
    #
    # [full transport]: https://core.telegram.org/mtproto/mtproto-transports#full
    class FullTransport < BaseTransport
      getter send_seq : UInt32
      getter recv_seq : UInt32

      def initialize
        @send_seq = 0
        @recv_seq = 0
      end

      def pack(input : IO::Memory, output : IO::Memory) : UInt32
        raise "Invalid input length #{input.size} (input must be divisible by 4)" if input.size % 4 != 0

        # payload len + length itself (4 bytes) + send counter (4 bytes) + crc32 (4 bytes)
        len = input.size + 4 + 4 + 4
        buf_start = output.size

        output.write_bytes(len.to_u32)
        output.write_bytes(@send_seq)
        output.write(input.to_slice[..])
        crc = begin
          buf = output.to_slice[buf_start..]
          Digest::CRC32.checksum(buf)
        end
        output.write_bytes(crc)

        @send_seq += 1
        UInt32.new(input.size + len)
      end

      def unpack(input : IO::Memory, output : IO::Memory) : UInt32
        # Need 4 bytes for the initial length
        if input.size < 4
          raise MissingBytesError.new
        end

        total_len = input.size
        needle = IO::Memory.new(input.to_slice[..])

        len = needle.read_bytes(UInt32, IO::ByteFormat::LittleEndian)
        if len < 12
          raise MissingBytesError.new
        end

        # receive counter
        seq = needle.read_bytes(UInt32, IO::ByteFormat::LittleEndian)
        if seq != @recv_seq
          raise BadSeqError.new(seq, @recv_seq)
        end

        # skip payload for now
        needle.seek(-4, IO::Seek::End)

        # crc32
        crc = needle.read_bytes(UInt32, IO::ByteFormat::LittleEndian)
        valid_crc = Digest::CRC32.checksum(input.to_slice[...-4])
        if crc != valid_crc
          raise BadCrcError.new(crc, valid_crc)
        end

        @recv_seq += 1
        output.write(needle.to_slice[8...-4])

        len
      end
    end
  end
end
