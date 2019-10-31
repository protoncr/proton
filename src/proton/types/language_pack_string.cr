# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents one language pack string.
  # key [::String] String key.
  # value [::String] String value.
  class LanguagePackString < Types::Base
    property key : ::String
    property value : ::String

    def initialize(@key : ::String, @value : ::String)
    end
  end
end

