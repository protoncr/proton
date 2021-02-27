module Proton::TL
  abstract class TLObject
    include TL::Serializable
    include TL::Deserializable
    include TL::Identifiable
  end

  abstract class TLRequest < TLObject
    include TL::RemoteCallable
  end
end
