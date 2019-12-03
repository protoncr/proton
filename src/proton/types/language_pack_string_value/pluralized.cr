# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A language pack string which has different forms based on the number of some object it mentions.
  # See https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html for more info.
  class LanguagePackStringValue::Pluralized < Types::LanguagePackStringValue
    include JSON::Serializable

    # Value for zero objects
    property zero_value : ::String

    # Value for one object
    property one_value : ::String

    # Value for two objects
    property two_value : ::String

    # Value for few objects
    property few_value : ::String

    # Value for many objects
    property many_value : ::String

    # Default value
    property other_value : ::String

    def initialize(@zero_value : ::String, @one_value : ::String, @two_value : ::String, @few_value : ::String, @many_value : ::String, @other_value : ::String)
    end
  end
end
