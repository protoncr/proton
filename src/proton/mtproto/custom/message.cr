module Proton::MTProto
  # This class represents the following TL definition:
  #
  # ```tl
  # message msg_id:long seqno:int bytes:int body:Object = Message;
  # ```
  #
  # Messages are what's ultimately sent to Telegram.
  #
  # Each message has its own unique identifier, and the body is simply
  # the serialized request that should be executed on the server, or
  # the response object from Telegram.
  class Message
    include TL::Serializable
    extend TL::Deserializable

    SIZE_OVERHEAD = 16

    property msg_id : Int64
    property seq_no : Int32
    property body : Bytes

    def initialize(@msg_id, @seq_no, @body)
    end

    # Peek the constructor ID from the body.
    def constructor_id
      IO::ByteFormat::LittleEndian.decode(UInt32, @body[0..4])
    end

    def requires_ack?
      # > Content-related Message
      # >   A message requiring an explicit acknowledgment.
      # > [...]
      # > (msg_seqno) [...] twice the number of "content-related" messages
      # > [...] and subsequently incremented by one if the current message
      # > is a content-related message.
      # https://core.telegram.org/mtproto/description#content-related-message
      @seq_no % 2 == 1
    end

    def tl_serialize(io, boxed = false)
      @msg_id.tl_serialize(io)
      @seq_no.tl_serialize(io)
      @body.size.tl_serialize(io)
      @body.tl_serialize(io, boxed: true)
    end

    def self.tl_deserialize(io, boxed = false)
      msg_id = Int64.tl_deserialize(io)
      seq_no = Int32.tl_deserialize(io)

      len = Int32.tl_deserialize(io)
      raise "Bad length" unless len >= 0 && len < MessageContainer::MAXIMUM_SIZE

      body = Buffer.new(len)
      io.read(body)

      new(msg_id, seq_no, body)
    end
  end
end
