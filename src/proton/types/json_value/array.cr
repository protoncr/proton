# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents a JSON array.
  # values [::Array(Proton::Types::JsonValue)] The list of array elements.
  class JsonValue::Array < Types::JsonValue
    property values : ::Array(Proton::Types::JsonValue)

    def initialize(@values : ::Array(Proton::Types::JsonValue))
    end
  end
end

