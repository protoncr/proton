require "digest"
require "./crypto/*"

module Proton::Crypto
  enum Side
    Client
    Server

    def x
      case self
      in Client; 0
      in Server; 8
      end
    end
  end

  # Calculate the key based on Telegram [guidelines for MTProto 2],
  # returning the pair `(key, iv)` for use in AES-IGE mode.
  #
  # [guidelines for MTProto 2]: https://core.telegram.org/mtproto/description#defining-aes-key-and-initialization-vector
  def self.calc_key(auth_key : AuthKey, msg_key : Bytes, side : Side)
    x = side.x

    # sha256_a = SHA256 (msg_key + substr (auth_key, x, 36))
    sha256_a = begin
      hasher = Digest::SHA256.new
      hasher.update(msg_key)
      hasher.update(auth_key.data[x...(x + 36)])
      hasher.final
    end

    # aes_key = sha256_b = SHA256 (substr (auth_key, 40+x, 36) + msg_key)
    sha256_b = begin
      hasher = Digest::SHA256.new
      hasher.update(auth_key.data[(40 + x)...(40 + x + 36)])
      hasher.update(msg_key)
      hasher.final
    end

    # aes_key = substr (sha256_a, 0, 8) + substr (sha256_b, 8, 16) + substr (sha256_a, 24, 8)
    aes_key = Bytes.concat(sha256_a[0...8], sha256_b[8...(8 + 16)], sha256_a[24...(24 + 8)])

    # aes_iv  = substr (sha256_b, 0, 8) + substr (sha256_a, 8, 16) + substr (sha256_b, 24, 8)
    aes_iv = Bytes.concat(sha256_b[0...8], sha256_a[8...(8 + 16)], sha256_b[24...(24 + 8)])

    {aes_key, aes_iv}
  end

  # Determines the padding length needed for a plaintext of a certain length,
  # according to the following citation:
  #
  # > Note that MTProto 2.0 requires from 12 to 1024 bytes of padding
  # > [...] the resulting message length be divisible by 16 bytes
  def self.determine_padding_v2_length(len)
    16 + (16 - (len % 16))
  end

  # This function implements the [MTProto 2.0 algorithm] for computing
  # `aes_key` and `aes_iv` from `auth_key` and `msg_key` as specified
  #
  # [MTProto 2.0 algorithm]: https://core.telegram.org/mtproto/description#defining-aes-key-and-initialization-vector
  def self.encrypt_data_v2(plaintext : Bytes, auth_key : AuthKey)
    random_padding = Random::Secure.random_bytes(32)
    do_encrypt_data_v2(plaintext, auth_key, random_padding)
  end

  # Inner body of `encrypt_data_v2`, separated for testing purposes
  def self.do_encrypt_data_v2(plaintext : Bytes, auth_key : AuthKey, random_padding : Bytes)
    padded_plaintext = begin
      # "Note that MTProto 2.0 requires from 12 to 1024 bytes of padding"
      # "[...] the resulting message length be divisible by 16 bytes"
      padding_len = determine_padding_v2_length(plaintext.size)
      Bytes.concat(plaintext, random_padding[0...padding_len])
    end

    # Encryption is done by the client
    side = Side::Client
    x = side.x

    # msg_key_large = SHA256 (substr (auth_key, 88+x, 32) + plaintext + random_padding)
    msg_key_large = begin
      hasher = Digest::SHA256.new
      hasher.update(auth_key.data[(88 + x)...(88 + x + 32)])
      hasher.update(padded_plaintext)
      hasher.final
    end

    # msg_key = substr (msg_key_large, 8, 16)
    msg_key = msg_key_large[8...(8 + 16)].clone

    # Calculate the key
    key, iv = calc_key(auth_key, msg_key, side)

    ciphertext = AES.ige_encrypt(padded_plaintext, key, iv)

    Bytes.concat(auth_key.key_id, msg_key, ciphertext)
  end

  # Inverse of `encrypt_data_v2`
  def self.decrypt_data_v2(ciphertext : Bytes, auth_key : AuthKey)
    # Decryption is done on server
    side = Side::Server
    x = side.x

    if ciphertext.size < 24 || (ciphertext.size - 24) % 16 != 0
      raise Error::InvalidBuffer.new
    end

    # TODO Check salt, session_id and sequence_number
    key_id = ciphertext[0...8]
    if auth_key.key_id != key_id
      raise Error::AuthKeyMismatch.new
    end

    msg_key = ciphertext[8...(8 + 16)].clone

    key, iv = calc_key(auth_key, msg_key, :server)
    plaintext = decrypt_ige(ciphertext[24...], key, iv)

    # https://core.telegram.org/mtproto/security_guidelines#mtproto-encrypted-messages
    our_key = begin
      hasher = Digest::SHA256.new
      hasher.update(auth_key.data[(88 + x)...(88 + x + 32)])
      hasher.update(plaintext)
      hasher.final
    end

    if msg_key != our_key[8...(8 + 16)]
      raise Error::MessageKeyMismatch.new
    end

    plaintext
  end

  def self.generate_key_data_from_nonce(server_nonce : Bytes, new_nonce : Bytes)
    # hash1 = sha1(new_nonce + server_nonce).digest()
    hash1 = begin
      hasher = Digest::SHA1.new
      hasher.update(new_nonce)
      hasher.update(server_nonce)
      hasher.final
    end

    # hash2 = sha1(server_nonce + new_nonce).digest()
    hash2 = begin
      hasher = Digest::SHA1.new
      hasher.update(server_nonce)
      hasher.update(new_nonce)
      hasher.final
    end

    # hash2 = sha1(new_nonce + new_nonce).digest()
    hash3 = begin
      hasher = Digest::SHA1.new
      hasher.update(new_nonce)
      hasher.update(new_nonce)
      hasher.final
    end

    # key = hash1 + hash2[:12]
    key = Bytes.concat(hash1, hash2[0...12])

    # iv = hash2[12:20] + hash3 + new_nonce[:4]
    iv = Bytes.concat(hash2[12...20], hash3, new_nonce[0...4])

    {key, iv}
  end

  def self.encrypt_ige(plaintext : Bytes, key : Bytes, iv : Bytes)
    padded_plaintext = if plaintext.size % 16 == 0
                         plaintext
                       else
                         pad_len = (16 - (plaintext.size % 16)) % 16
                         padding = Random::Secure.random_bytes(pad_len)
                         Bytes.concat(plaintext, padding)
                       end

    AES.ige_encrypt(padded_plaintext, key, iv)
  end

  # Decrypt data using AES-IGE. Panics if the plaintext is not padded
  # to 16 bytes.
  def self.decrypt_ige(padded_ciphertext : Bytes, key : Bytes, iv : Bytes)
    AES.ige_decrypt(padded_ciphertext, key, iv)
  end
end
