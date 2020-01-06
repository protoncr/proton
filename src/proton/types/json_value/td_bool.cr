# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents a boolean JSON value.
  class JsonValue::TDBool < Types::JsonValue
    include JSON::Serializable

    # The value
    property value : ::Bool = false

    def initialize(@value : ::Bool = false)
    end
  end
end
