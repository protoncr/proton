require "crypto"

module Proton::Crypto
  module AES
    def self.ige_encrypt(data, key, iv)
      ::Crypto::IGE.encrypt(data.to_slice, key.to_slice, iv.to_slice)
    end

    def self.ige_decrypt(data, key, iv)
      ::Crypto::IGE.decrypt(data.to_slice, key.to_slice, iv.to_slice)
    end
  end
end
