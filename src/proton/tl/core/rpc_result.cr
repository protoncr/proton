module Proton
  module TL
    class RpcResult < TLObject
      CONSTRUCTOR_ID = 0xf35c6d01

      getter req_msg_id : Int64
      getter body : Bytes?
      getter error : Root::RpcError?

      def initialize(
        @req_msg_id : Int64,
        @body : Bytes? = nil,
        @error : Root::RpcError? = nil,
      )
      end

      def tl_serialize(io : IO, bare = false)
        CONSTRUCTOR_ID.tl_serialize(io, true) unless bare
        @req_msg_id.tl_serialize(io, true)
        @body.tl_serialize(io, true)
        @error.tl_serialize(io, false) if error
      end

      def self.tl_deserialize(io : IO, bare = false)
        msg_id =  Int64.tl_deserialize(io, true)
        inner_code = UInt32.tl_deserialize(io, true)
        case inner_code
        when TL::RpcError::CONSTRUCTOR_ID
          return RpcResult.new(msg_id, nil, TL::RpcError.tl_deserialize(io, false))
        when TL::GzipPacked::CONSTRUCTOR_ID
          data = TL::GzipPacked.tl_deserialize(io, false).data
          return RpcResult.new(msg_id, data, nil)
        end

        io.seek(-4, :current)
        # This will read more than necessary, but it's okay.
        # We could make use of MessageContainer's length here, but since
        # it's not necessary we don't need to care about it.
        RpcResult.new(msg_id, io.gets_to_end.to_slice, nil)
      end
    end
  end
end