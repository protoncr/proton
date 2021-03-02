module Proton::MTProto
  # This class represents the following TL definition:
  #
  # ```tl
  # rpc_result#f35c6d01 req_msg_id:long result:Object = RpcResult;
  # ```
  class MessageContainer
    extend TL::Deserializable

    CONSTRUCTOR_ID = 0x73f1f8dc

    # constructor id (4 bytes), inner vec len (4 bytes)
    SIZE_OVERHEAD = 8_u8

    # Maximum size in bytes for the inner payload of the container.
    # Telegram will close the connection if the payload is bigger.
    # The overhead of the container itself is subtracted.
    MAXIMUM_SIZE = 1_044_456 - SIZE_OVERHEAD

    # Maximum amount of messages that can't be sent inside a single
    # container, inclusive. Beyond this limit Telegram will respond
    # with `BAD_MESSAGE` `64` (invalid container).
    #
    # This limit is not 100% accurate and may in some cases be higher.
    # However, sending up to 100 requests at once in a single container
    # is a reasonable conservative value, since it could also depend on
    # other factors like size per request, but we cannot know this.
    MAXIMUM_LENGTH = 100

    property messages : Array(Message)

    def initialize(@messages = [] of Message)
    end

    def self.tl_deserialize(io, boxed = false)
      constructor_id = UInt32.tl_deserialize(io)
      raise TL::Error::UnexpectedConstructor.new(constructor_id) unless constructor_id == CONSTRUCTOR_ID

      len = Int32.tl_deserialize(io)
      raise "Bad length" unless len >= 0

      messages = Array(Message).new(Math.min(len, MAXIMUM_LENGTH))
      len.times do
        messages << Message.deserialize(io, boxed)
      end

      new(messages)
    end
  end
end
