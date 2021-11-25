module Proton
  module TL
    class TLMessage < TLObject
      CONSTRUCTOR_ID = 0x0

      SIZE_OVERHEAD = 12

      getter msg_id : Int64
      getter seq_no : Int32
      getter obj : TLObject

      def initialize(
        @msg_id : Int64,
        @seq_no : Int32,
        @obj : TLObject
      )
      end

      def tl_serialize(io : IO, bare = true)
        @msg_id.tl_serialize(io, true)
        @seq_no.tl_serialize(io, true)
        @obj.tl_serialize(io, false)
      end

      def self.tl_deserialize(io : IO, bare = false)
        new(
          msg_id: Int64.tl_deserialize(io, true),
          seq_no: Int32.tl_deserialize(io, true),
          obj: TL::Utils.read_tlobject(io)
        )
      end
    end
  end
end