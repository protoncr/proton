module Proton
  module Helpers
    def self.generate_random_string(size)
      chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".chars
      arr = Array(Char).new(size) { chars.sample }
      arr.join
    end
  end
end
