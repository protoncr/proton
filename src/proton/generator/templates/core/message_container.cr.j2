module Proton
  module TL
    class MessageContainer < TLObject
      CONSTRUCTOR_ID = 0x73f1f8dc

      # Maximum size in bytes for the inner payload of the container.
      # Telegram will close the connection if the payload is bigger.
      # The overhead of the container itself is subtracted.
      MAXIMUM_SIZE = 1044456 - 8

      # Maximum amount of messages that can't be sent inside a single
      # container, inclusive. Beyond this limit Telegram will respond
      # with BAD_MESSAGE 64 (invalid container).
      #
      # This limit is not 100% accurate and may in some cases be higher.
      # However, sending up to 100 requests at once in a single container
      # is a reasonable conservative value, since it could also depend on
      # other factors like size per request, but we cannot know this.
      MAXIMUM_LENGTH = 100

      getter messages : TL::TLMessage

      def initialize(messages : TL::TLMessage? = nil)
        @messages = messages || [] of TL::TLMessage
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_deserialize(io, true) unless bare
        @messages.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        messages = [] of TL::TLMessage
        Int32.tl_deserialize(io, true).times do |i|
          msg_id = Int64.tl_deserialize(io, true)
          seq_no = Int32.tl_deserialize(io, true)
          length = Int32.tl_deserialize(io, true)
          before = io.pos
          obj = TL::Utils.read_tlobect(io)
          io.pos = before + length
          messages << TL::TLMessage.new(msg_id, seq_no, obj)
        end
        new(messages)
      end
    end
  end
end