module Proton::TL
  abstract class TLObject
    include TL::Serializable
    extend  TL::Deserializable
  end

  abstract class TLRequest
    # include TL::Serializable
    # extend  TL::RemoteCallable
  end
end