# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents a string JSON value.
  # value [::String] The value.
  class JsonValue::String < Types::JsonValue
    property value : ::String

    def initialize(@value : ::String)
    end
  end
end

