# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents one member of a JSON object.
  class JsonObjectMember < Types::Base
    include JSON::Serializable

    # Member's key
    property key : ::String

    # Member's value
    property value : Proton::Types::JsonValue

    def initialize(@key : ::String, @value : Proton::Types::JsonValue)
    end
  end
end
