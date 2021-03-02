module Proton::MTProto
  # This class represents the following TL definition:
  #
  # ```tl
  # rpc_result#f35c6d01 req_msg_id:long result:Object = RpcResult;
  # ```
  class RpcResult
    extend TL::Deserializable

    CONSTRUCTOR_ID = 0xf35c6d01_u32

    property req_msg_id : Int64
    property result : Bytes

    def initialize(@req_msg_id, @result)
    end

    def self.tl_deserialize(io, boxed = false)
      constructor_id = UInt32.tl_deserialize(io)
      raise TL::Error::UnexpectedConstructor.new(constructor_id) unless constructor_id == CONSTRUCTOR_ID

      req_msg_id = Int64.tl_deserialize(io)
      result = io.gets_to_end.to_slice

      new(req_msg_id, result)
    end
  end
end
