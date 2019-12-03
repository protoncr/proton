# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents the value of an option.
  abstract class OptionValue < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "optionValueBoolean" => Types::OptionValue::TDBool,
      "optionValueEmpty" => Types::OptionValue::Empty,
      "optionValueInteger" => Types::OptionValue::TDInt,
      "optionValueString" => Types::OptionValue::TDString
    })
  end
end

require "./option_value/td_bool"
require "./option_value/empty"
require "./option_value/td_int"
require "./option_value/td_string"
