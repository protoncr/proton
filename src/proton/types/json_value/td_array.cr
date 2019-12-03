# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents a JSON array.
  class JsonValue::TDArray < Types::JsonValue
    include JSON::Serializable

    # The list of array elements
    property values : ::Array(Proton::Types::JsonValue)

    def initialize(@values : ::Array(Proton::Types::JsonValue))
    end
  end
end
