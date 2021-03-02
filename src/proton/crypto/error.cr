module Proton::Crypto
  class Error < Exception
    # The ciphertext is either too small or not padded correctly.
    class InvalidBuffer < Error
      def initialize
        super("invalid ciphertext buffer length")
      end
    end

    # The server replied with the ID of a different authorization key.
    class AuthKeyMismatch < Error
      def initialize
        super("server authkey mismatches with ours")
      end
    end

    # The key of the message did not match our expectations.
    class MessageKeyMismatch < Error
      def initialize
        super("server msgkey mismatches with ours")
      end
    end
  end
end
