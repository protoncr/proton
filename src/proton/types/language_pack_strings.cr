# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a list of language pack strings.
  class LanguagePackStrings < Types::Base
    include JSON::Serializable

    # A list of language pack strings
    property strings : ::Array(::String)

    def initialize(@strings : ::Array(::String))
    end
  end
end
