require "digest"

module Proton::Crypto
  struct AuthKey
    getter data : Bytes
    getter aux_hash : Bytes
    getter key_id : Bytes

    def initialize(@data : Bytes, @aux_hash : Bytes, @key_id : Bytes)
    end

    def self.from_bytes(data : Bytes)
      sha = Digest::SHA1.new.update(data).final

      aux_hash = Bytes.new(8)
      sha[0...8].copy_to(aux_hash)

      key_id = Bytes.new(8)
      sha[12...(12 + 8)].copy_to(key_id)

      new(data, aux_hash, key_id)
    end

    def to_slice
      @data
    end

    def to_bytes
      @data
    end

    def calc_new_nonce_hash(new_nonce : Bytes, number : UInt8)
      data = Bytes.new(new_nonce.size + 1 + @aux_hash.size)
      new_nonce.copy_to(data)
      data[new_nonce.size] = number
      @aux_hash.copy_to(data[(new_nonce.size + 1)..])

      result = Bytes.new(16)
      result.copy_from(Digest::SHA1.new.update(data).final[4..])
      result
    end

    def ==(other : self)
      @key_id == other.key_id
    end

    def to_s(io)
      io << "AuthKey{ key_id: #{IO::ByteFormat::LittleEndian.decode(UInt64, @key_id)} }"
    end
  end
end
