# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents one member of a JSON object.
  # key [::String] Member's key.
  # value [Proton::Types::JsonValue] Member's value.
  class JsonObjectMember < Types::Base
    property key : ::String
    property value : Proton::Types::JsonValue

    def initialize(@key : ::String, @value : Proton::Types::JsonValue)
    end
  end
end

