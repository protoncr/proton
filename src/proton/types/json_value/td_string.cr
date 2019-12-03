# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents a string JSON value.
  class JsonValue::TDString < Types::JsonValue
    include JSON::Serializable

    # The value
    property value : ::String

    def initialize(@value : ::String)
    end
  end
end
