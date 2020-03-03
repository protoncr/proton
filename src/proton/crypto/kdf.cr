# Based off of Pyrogram's kdf.py
# https://github.com/pyrogram/pyrogram/blob/develop/pyrogram/crypto/kdf.py

require "openssl/cipher"

module Proton::Crypto
  module KDF
    # See https://core.telegram.org/mtproto/description#defining-aes-key-and-initialization-vector
    def self.create(auth_key : String | Slice, msg_key : String | Slice, outgoing : Bool)
      auth_key = auth_key.is_a?(String) ? auth_key : String.new(auth_key)
      msg_key = msg_key.is_a?(String) ? msg_key : String.new(msg_key)

      if auth_key.size != 256
        raise "Auth key incorrect size. Should be 256 bytes, got #{auth_key.size}."
      end

      if msg_key.size != 16
        raise "Message key incorrect size. Should be 16 bytes, got #{msg_key.size}"
      end

      x = outgoing ? 0 : 8

  	  sha256_a = OpenSSL::Digest.new("SHA256")
      sha256_b = OpenSSL::Digest.new("SHA256")

      sha256_a << (msg_key + auth_key[x, x + 36])
      sha256_b << (auth_key[x + 40, x + 76] + msg_key)

      sha256_a_digest = sha256_a.digest.to_a
      sha256_b_digest = sha256_b.digest.to_a

      aes_key = sha256_a_digest[0, 8] + sha256_b_digest[8, 24] + sha256_a_digest[24, 32]
      aes_iv = sha256_b_digest[0, 8] + sha256_a_digest[8, 24] + sha256_b_digest[24, 32]

      {key: aes_key, iv: aes_iv}
    end
  end
end
