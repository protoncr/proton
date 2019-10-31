# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents a JSON object.
  # members [::Array(Proton::Types::JsonObjectMember)] The list of object members.
  class JsonValue::Object < Types::JsonValue
    property members : ::Array(Proton::Types::JsonObjectMember)

    def initialize(@members : ::Array(Proton::Types::JsonObjectMember))
    end
  end
end

