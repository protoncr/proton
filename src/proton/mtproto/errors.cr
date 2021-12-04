module Proton
  module MTProto
    class Error < Exception
      macro inherited
        def ==(other)
          return false unless self.class == other.class
          {% for var in @type.instance_vars %}
          return false unless @{{ var.name.id }} == other.@{{ var.name.id }}
          {% end %}
          true
        end
      end
    end

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
      getter size : Int::Primitive

      def initialize(@size : Int::Primitive)
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
      getter len : Int::Primitive

      def initialize(@len : Int::Primitive)
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
    class RequestError < Error
      def self.from(error : Exception)
        DeserializeError.new(error.message)
      end
    end

    # The error type reported by the server when a request is misused.
    class RpcError < RequestError
      # A numerical value similar to HTTP status codes.
      getter code : Int::Primitive

      # The ASCII error name, normally in screaming snake case.
      getter name : String

      # If the error contained an additional value, it will be present here.
      getter value : Int::Primitive?

      # The constructor identifier of the request that triggered this error.
      # Won't be present if the error was artificially constructed.
      property caused_by : Int::Primitive?

      def initialize(@code : Int::Primitive, @name : String, @value : Int::Primitive? = nil, @caused_by : Int::Primitive? = nil)
        message = String.build do |str|
          str << "rpc error #{@code}: #{name}"
          if caused_by
            str << " caused by #{caused_by})"
          end
          if value
            str << " (value: #{value})"
          end
        end

        super(message)
      end

      def self.from_tl(error : TL::Root::RpcError)
        message = String.new(error.error_message)
        if value = message.split(/\D/).reject(&.empty?).first?
          to_remove = "_#{value}"
          new(error.error_code, message.sub(to_remove, ""), value.to_u32, nil)
        else
          new(error.error_code, message, nil, nil)
        end
      end
    end

    class DroppedError < RequestError
      def initialize
        super("request error: request dropped")
      end
    end

    class BadMessageError < RequestError
      getter code : Int::Primitive

      def initialize(@code : Int::Primitive)
        msg = case @code
              when 16
                "msg_id too low (most likely, client time is wrong)"
              when 17
                "msg_id too high (most likely, client time is wrong)"
              when 18
                "incorrect two lower order msg_id bits; this is a bug"
              when 19
                "container msg_id is the same as msg_id of a previously received message; this is a bug"
              when 20
                "message too old, and it cannot be verified whether the server has received a message with this msg_id or not"
              when 32
                "msg_seqno too low (some previous msg_seqno must have been dropped)"
              when 33
                "msg_seqno too high (some msg_seqno must have been dropped or is invalid)"
              when 34
                "an even msg_seqno was expected, but an odd one was received; this may be a bug"
              when 35
                "odd msg_seqno was expected, but an even one was received; this may be a bug"
              when 48
                "incorrect server salt (invalid or too old); client session must be deleted"
              when 64
                "invalid container; this is likely a bug"
              else
                "unknown error code #{@code}"
              end

        super("request error: #{msg}")
      end
    end

    class DeserializeError < RequestError
      def initialize(error)
        super("request error: #{error}")
      end
    end

    class BadAuthKeyError < DeserializeError
      getter got : Int::Primitive
      getter expected : Int::Primitive

      def initialize(@got : Int::Primitive, @expected : Int::Primitive)
        super("bad server auth key (got #{@got}, expected #{@expected})")
      end
    end

    class BadMessageIdError < DeserializeError
      getter got : Int::Primitive

      def initialize(@got : Int::Primitive)
        super("bad server message id (got #{@got})")
      end
    end

    class NegativeMessageLengthError < DeserializeError
      getter got : Int::Primitive

      def initialize(@got : Int::Primitive)
        super("bad server message length (got #{@got})")
      end
    end

    class TooLongMessageLengthError < DeserializeError
      getter got : Int::Primitive
      getter max : Int::Primitive

      def initialize(@got : Int::Primitive, @max : Int::Primitive)
        super("bad server message length (got #{got}, when at most it should be #{max})")
      end
    end

    class TransportError < DeserializeError
      getter code : Int::Primitive

      def initialize(@code : Int::Primitive)
        super("transpot-level error, http status code: #{code}")
      end
    end

    class MessageBufferTooSmallError < DeserializeError
      def initialize
        super("server responded with a payload that's too small to fit a valid message")
      end
    end

    class DecompressionFailedError < DeserializeError
      def initialize
        super("failed to decompress server's data")
      end
    end

    class UnexpectedConstructorError < DeserializeError
      getter id : Int::Primitive

      def initialize(@id : Int::Primitive)
        super("unexpected constructor: %08X" % @id)
      end
    end

    class DecryptionError < DeserializeError
      getter error : Error

      def initialize(@error : Error)
        super("failed to decrypt message: #{error.message}")
      end
    end

    class MissingBytesError < Error
      def initialize
        super("need more bytes")
      end
    end

    class BadLenError < Error
      getter got : Int::Primitive

      def initialize(@got : Int::Primitive)
        super("bad length (got #{@got})")
      end
    end

    class BadSeqError < Error
      getter got : Int::Primitive
      getter expected : Int::Primitive

      def initialize(@got : Int::Primitive, @expected : Int::Primitive)
        super("bad sequence (expected #{@expected}, got #{@got})")
      end
    end

    class BadCrcError < Error
      getter got : Int::Primitive
      getter expected : Int::Primitive

      def initialize(@got : Int::Primitive, @expected : Int::Primitive)
        super("bad crc (expected #{@expected}, got #{@got})")
      end
    end
  end
end
