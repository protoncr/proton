require "big"
require "compress/gzip"
require "./utils/*"

module Proton::TL
  module Utils
    extend self

    def parse_bytes(input : Bytes | IO | String | Nil)
      if input.nil?
        return nil
      end

      case input
      when Bytes
        input
      when IO
        input.gets_to_end.to_slice
      when String
        input.to_slice
      end
    end

    def parse_bytes!(input : Bytes | IO | String | Nil)
      parse_bytes(input).not_nil!
    end

    def parse_int(input : Number?, as type : U.class) forall U
      U.new(input) unless input.nil?
    end

    def parse_int!(input : Number, as type : U.class) forall U
      parse_int(input, type).not_nil!
    end

    def assert_constructor(io : IO, expected : UInt32)
      actual = UInt32.tl_deserialize(io)
      if actual != expected
        raise TL::UnexpectedConstructorError.new(actual)
      end
    end
  end
end
