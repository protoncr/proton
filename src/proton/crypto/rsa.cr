require "big"
require "digest"

module Proton::Crypto
  module RSA
    record Key, n : BigInt, e : BigInt

    def self.encrypt_hashed(data : Bytes, key : Key, random_bytes : Bytes)
      to_encrypt = begin
        index = 0
        buffer = Bytes.new(255)

        # SHA1
        sha = Digest::SHA1.new.update(data).final
        sha.copy_to(buffer)
        index += sha.size

        # + data
        data.copy_to(buffer[index..])
        index += data.size

        # + padding
        padding_size = 255 - 20 - data.size
        padding = Bytes.new(padding_size)
        random_bytes[0...padding_size].copy_to(padding)
        padding.copy_to(buffer[index..])

        buffer
      end

      payload = BigInt.new(to_encrypt, IO::ByteFormat::BigEndian)
      encrypted = Factorize.modpow(payload, key.e, key.n)
      block = encrypted.to_slice(IO::ByteFormat::BigEndian)

      padding_size = block.size - 255
      padding = Bytes.new(padding_size) { 0_u8 }

      Bytes.concat(block, padding)[0..255]
    end
  end
end
