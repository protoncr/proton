module Proton::TL
  abstract class TLObject
    include TL::Serializable
    extend  TL::Deserializable

    include TL::Identifiable
    extend  TL::Identifiable

    def ==(other)
      return false unless self.class == other.class
      {% for var in @type.instance_vars %}
      return false unless @{{ var.name.id }} == other.@{{ var.name.id }}
      {% end %}
      true
    end
  end

  abstract class TLRequest
    include TL::Serializable
    extend  TL::RemoteCallable
  end
end
