require "big"

module Proton::TL
  module Utils
    extend self

    def parse_bytes(input : Bytes | IO | String | Nil)
      if input.nil?
        return nil
      end

      case input
      when Bytes
        return input
      when IO
        return input.gets_to_end.to_slice
      when String
        return input.to_slice
      end
    end

    def parse_bytes!(input : Bytes | IO | String | Nil)
      parse_bytes(input).not_nil!
    end
  end
end