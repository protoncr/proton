# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents a numeric JSON value.
  class JsonValue::TDNumber < Types::JsonValue
    include JSON::Serializable

    # The value
    property value : ::Float64

    def initialize(@value : ::Float64)
    end
  end
end
