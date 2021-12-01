module Proton
  module MTProto
    abstract class BaseTransport
      # Packs and writes `input` into `output`.
      #
      # Previous contents in `output` are not cleared before this operation.
      #
      # Raises if `input.length` is not divisible by 4.
      # If successful, returns how many bytes were packed into `output`.
      abstract def pack(input : IO::Memory, output : IO::Memory) : UInt32

      # Unpacks the content from `input` into `output`.
      #
      # Previous contents in `output` are not cleared before this operation.
      #
      # If successful, returns how many bytes of `input` were used.
      abstract def unpack(input : IO::Memory, output : IO::Memory) : UInt32
    end
  end
end
