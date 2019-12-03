# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents one language pack string.
  class LanguagePackString < Types::Base
    include JSON::Serializable

    # String key
    property key : ::String

    # String value
    property value : ::String

    def initialize(@key : ::String, @value : ::String)
    end
  end
end
