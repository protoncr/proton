module Proton
  module MTProto
    class Error < Exception; end

    class InvalidResponseError < Error
      getter error : Error

      def initialize(@error : Error)
        super("invalid server response: #{@error.message}")
      end
    end

    class InvalidNonceError < Error
      getter got : Bytes
      getter expected : Bytes

      def initialize(@got : Bytes, @expected : Bytes)
        super("invalid nonce: got #{@got}, expected #{@expected}")
      end
    end

    class InvalidPQSizeError < Error
      getter size : Int32

      def initialize(@size : Int32)
        super("invalid pq size #{@size}")
      end
    end

    class UnknownFingerprintsError < Error
      getter fingerprints : Array(Int64)

      def initialize(@fingerprints : Array(Int64))
        super("all server fingerprints are unknown: #{@fingerprints}")
      end
    end

    class DHParamsFailError < Error
      def initialize
        super("the generation of DH parameters by the server failed")
      end
    end

    class InvalidServerNonceError < Error
      getter got : Bytes
      getter expected : Bytes

      def initialize(@got : Bytes, @expected : Bytes)
        super("invalid server nonce: got #{@got}, expected #{@expected}")
      end
    end

    class EncryptedResponseNotPaddedError < Error
      getter len : Int32

      def initialize(@len : Int32)
        super("the encrypted server response was #{@len} bytes long, which is not correctly padded")
      end
    end

    class InvalidDhInnerDataError < Error
      getter error : Error

      def initialize(@error : Error)
        super("could not deserialize DH inner data: #{error.message}")
      end
    end

    class GParameterOutOfRangeError < Error
      getter value : BigInt
      getter low : BigInt
      getter high : BigInt

      def initialize(@value : BigInt, @low : BigInt, @high : BigInt)
        super("the parameter g = #{@value} was not in the range #{@low}..#{@high}")
      end
    end

    class DHGenRetryError < Error
      def initialize
        super("the generation of DH parameters should be retried")
      end
    end

    class DHGenFailError < Error
      def initialize
        super("the generation of DH parameters failed")
      end
    end

    class InvalidAnswerHashError < Error
      getter got : Bytes
      getter expected : Bytes

      def initialize(@got : Bytes, @expected : Bytes)
        super("invalid answer hash: got #{@got}, expected #{@expected}")
      end
    end

    class InvalidNewNonceHashError < Error
      getter got : Bytes
      getter expected : Bytes

      def initialize(@got : Bytes, @expected : Bytes)
        super("invalid new nonce hash: got #{@got}, expected #{@expected}")
      end
    end

    # This error occurs when a Remote Procedure call was unsuccessful.
    #
    # The request should be retransmited when this happens, unless the
    # variant is `InvalidParameters`.
    class RequestError < Error; end

    class RpcError < RequestError
      def initialize(error)
        super("request error: #{error}")
      end
    end

    class DroppedError < RequestError
      def initialize
        super("request error: request dropped")
      end
    end

    class BadMessageError < RequestError
      def initialize(code : Int32)
        super("request error: bad message (code #{code})")
      end
    end

    class DeserializeError < RequestError
      def initialize(error)
        super("request error: #{error}")
      end
    end

    class TransportError < Error; end

    class MissingBytesError < TransportError
      def initialize
        super("need more bytes")
      end
    end

    class BadLenError < TransportError
      getter got : Int32

      def initialize(@got : Int32)
        super("bad length (got #{@got})")
      end
    end

    class BadSeqError < TransportError
      getter got : UInt32
      getter expected : UInt32

      def initialize(@got : UInt32, @expected : UInt32)
        super("bad sequence (expected #{@expected}, got #{@got})")
      end
    end

    class BadCrcError < TransportError
      getter got : UInt32
      getter expected : UInt32

      def initialize(@got : UInt32, @expected : UInt32)
        super("bad crc (expected #{@expected}, got #{@got})")
      end
    end
  end
end
