# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # An ordinary language pack string.
  class LanguagePackStringValue::Ordinary < Types::LanguagePackStringValue
    include JSON::Serializable

    # String value
    property value : ::String

    def initialize(@value : ::String)
    end
  end
end
