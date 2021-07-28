module Proton::MTProto
  class Error < Exception
    class InvalidResponse < Error
      getter error : Error

      def initialize(@error : Error)
        super("invalid server response: #{@error.message}")
      end
    end

    class InvalidNonce < Error
      getter got : Bytes
      getter expected : Bytes

      def initialize(@got : Bytes, @expected : Bytes)
        super("invalid nonce: got #{@got}, expected #{@expected}")
      end
    end

    class InvalidPQSize < Error
      getter size : Int32

      def initialize(@size : Int32)
        super("invalid pq size #{@size}")
      end
    end

    class UnknownFingerprints < Error
      getter fingerprints : Array(Int64)

      def initialize(@fingerprints : Array(Int64))
        super("all server fingerprints are unknown: #{@fingerprints}")
      end
    end

    class DHParamsFail < Error
      def initialize
        super("the generation of DH parameters by the server failed")
      end
    end

    class InvalidServerNonce < Error
      getter got : Bytes
      getter expected : Bytes

      def initialize(@got : Bytes, @expected : Bytes)
        super("invalid server nonce: got #{@got}, expected #{@expected}")
      end
    end

    class EncryptedResponseNotPadded < Error
      getter len : Int32

      def initialize(@len : Int32)
        super("the encrypted server response was #{@len} bytes long, which is not correctly padded")
      end
    end

    class InvalidDhInnerData < Error
      getter error : Error

      def initialize(@error : Error)
        super("could not deserialize DH inner data: #{error.message}")
      end
    end

    class GParameterOutOfRange < Error
      getter value : BigInt
      getter low : BigInt
      getter high : BigInt

      def initialize(@value : BigInt, @low : BigInt, @high : BigInt)
        super("the parameter g = #{@value} was not in the range #{@low}..#{@high}")
      end
    end

    class DHGenRetry < Error
      def initialize
        super("the generation of DH parameters should be retried")
      end
    end

    class DHGenFail < Error
      def initialize
        super("the generation of DH parameters failed")
      end
    end

    class InvalidAnswerHash < Error
      getter got : Bytes
      getter expected : Bytes

      def initialize(@got : Bytes, @expected : Bytes)
        super("invalid answer hash: got #{@got}, expected #{@expected}")
      end
    end

    class InvalidNewNonceHash < Error
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
    class RequestError < Error
      class RpcError < RequestError
        def initialize(error)
          super("request error: #{error}")
        end
      end

      class Dropped < RequestError
        def initialize
          super("request error: request dropped")
        end
      end

      class BadMessage < RequestError
        def initialize(code : Int32)
          super("request error: bad message (code #{code})")
        end
      end

      class Deserialize < RequestError
        def initialize(error)
          super("request error: #{error}")
        end
      end
    end
  end
end
