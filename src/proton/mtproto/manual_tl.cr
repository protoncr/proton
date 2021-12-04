module Proton
  module MTProto
    # This struct represents the following TL definition:
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
      include TL::Identifiable

      # msg_id (8 bytes), seq_no (4 bytes), bytes (4 len)
      SIZE_OVERHEAD = 8 + 4 + 4

      property msg_id : Int64

      property seq_no : Int32

      property body : Bytes

      def initialize(
        msg_id : Int64,
        seq_no : Int32,
        body : Bytes | String | IO
      )
        @msg_id = msg_id
        @seq_no = seq_no
        @body = TL::Utils.parse_bytes!(body)
      end

      # Peek the constructor ID from the body.
      def constructor_id : UInt32
        IO::ByteFormat::LittleEndian.decode(UInt32, @body[0..3])
      end

      def requires_ack?
        #  > Content-related Message
        #  >   A message requiring an explicit acknowledgment.
        #  > [...]
        #  > (msg_seqno) [...] twice the number of "content-related" messages
        #  > [...] and subsequently incremented by one if the current message
        #  > is a content-related message.
        #  https://core.telegram.org/mtproto/description#content-related-message
        @seq_no % 2 == 1
      end

      def tl_serialize(io : IO, bare = false)
        @msg_id.tl_serialize(io)
        @seq_no.tl_serialize(io)
        @body.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        msg_id = Int64.tl_deserialize(io)
        seq_no = Int32.tl_deserialize(io)

        len = Int32.tl_deserialize(io)
        raise "Invalid length #{len}" if len <= 0 || len < MessageContainer::MAXIMUM_SIZE

        io.seek(-4, IO::Seek::Current)
        body = Bytes.tl_deserialize(io)

        new(msg_id, seq_no, body)
      end
    end

    # This class represents the following TL definition:
    #
    # ```tl
    # rpc_result#f35c6d01 req_msg_id:long result:Object = RpcResult;
    # ```
    class RpcResult
      extend TL::Deserializable
      include TL::Identifiable

      getter constructor_id : UInt32 = 0xf35c6d01_u32
      class_getter constructor_id : UInt32 = 0xf35c6d01_u32

      property req_msg_id : Int64

      property result : Bytes

      def initialize(
        req_msg_id : Int64,
        result : Bytes | String | IO
      )
        @req_msg_id = req_msg_id
        @result = TL::Utils.parse_bytes!(result)
      end

      def inner_constructor
        IO::ByteFormat::LittleEndian.decode(UInt32, @result[0..3])
      end

      def self.tl_deserialize(io : IO, bare = false)
        TL::Utils.assert_constructor(io, self.constructor_id) unless bare

        req_msg_id = Int64.tl_deserialize(io)
        result = io.gets_to_end.to_slice

        new(req_msg_id, result)
      end
    end

    # This class represents the following TL definition:
    #
    # ```tl
    # msg_container#73f1f8dc messages:vector<message> = MessageContainer;
    # ```
    class MessageContainer
      extend TL::Deserializable
      include TL::Identifiable
      extend TL::Identifiable

      getter constructor_id : UInt32 = 0x73f1f8dc_u32
      class_getter constructor_id : UInt32 = 0x73f1f8dc_u32

      # constructor id (4 bytes), inner vec len (4 bytes)
      SIZE_OVERHEAD = 8

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

      getter messages : Array(Message)

      def initialize(
        messages : Array(Message)
      )
        @messages = messages
      end

      def self.tl_deserialize(io : IO, bare = false)
        TL::Utils.assert_constructor(io, self.constructor_id) unless bare

        len = Int32.tl_deserialize(io)
        raise "Invalid length #{len}" if len < 0

        messages = [] of Message
        (0..len).each do |_|
          msg = Message.tl_deserialize(io)
          messages << msg
        end

        new(messages)
      end
    end

    # This class represents the following TL definition:
    #
    # ```tl
    # msg_copy#e06046b2 orig_message:Message = MessageCopy;
    # ```
    #
    # Note: that this is "not used", in favour of `msg_container`.
    class MessageCopy
      include TL::Identifiable
      extend TL::Identifiable

      getter constructor_id : UInt32 = 0xe06046b2_u32
      class_getter constructor_id : UInt32 = 0xe06046b2_u32

      property orig_message : Array(Message)

      def initialize(
        orig_message : Array(Message)
      )
        @orig_message = orig_message
      end
    end

    # This class represents the following TL definition:
    #
    # ```tl
    # gzip_packed#3072cfa1 packed_data:bytes = Object;
    # ```
    class GzipPacked
      include TL::Serializable
      extend TL::Deserializable
      include TL::Identifiable
      extend TL::Identifiable

      getter constructor_id : UInt32 = 0x3072cfa1_u32
      class_getter constructor_id : UInt32 = 0x3072cfa1_u32

      getter packed_data : Bytes

      # :nodoc:
      def initialize(packed_data : Bytes)
        @packed_data = packed_data
      end

      def self.from_unpacked(unpacked_data : Bytes)
        io = IO::Memory.new(unpacked_data)
        packed_data = Utils.gzip_io(io)
        new(packed_data)
      end

      def decompress
        io = IO::Memory.new(@packed_data)
        Utils.ungzip_io(io)
      end

      def tl_serialize(io : IO, bare = false)
        constructor_id.tl_serialize(io)
        @packed_data.tl_serialize(io)
      end

      def self.tl_deserialize(io : IO, bare = false)
        TL::Utils.assert_constructor(io, self.constructor_id) unless bare

        packed_data = Bytes.tl_deserialize(io)

        new(packed_data)
      end
    end
  end
end
