# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents a JSON object.
  class JsonValue::TDObject < Types::JsonValue
    include JSON::Serializable

    # The list of object members
    property members : ::Array(Proton::Types::JsonObjectMember)

    def initialize(@members : ::Array(Proton::Types::JsonObjectMember))
    end
  end
end
