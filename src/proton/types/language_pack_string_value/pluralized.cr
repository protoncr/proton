# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A language pack string which has different forms based on the number of some object it mentions.
  # See https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html for more info.
  # zero_value [::String] Value for zero objects.
  # one_value [::String] Value for one object.
  # two_value [::String] Value for two objects.
  # few_value [::String] Value for few objects.
  # many_value [::String] Value for many objects.
  # other_value [::String] Default value.
  class LanguagePackStringValue::Pluralized < Types::LanguagePackStringValue
    property zero_value : ::String
    property one_value : ::String
    property two_value : ::String
    property few_value : ::String
    property many_value : ::String
    property other_value : ::String

    def initialize(@zero_value : ::String, @one_value : ::String, @two_value : ::String, @few_value : ::String, @many_value : ::String, @other_value : ::String)
    end
  end
end

