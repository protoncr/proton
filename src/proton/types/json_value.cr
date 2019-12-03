# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a JSON value.
  abstract class JsonValue < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "jsonValueNull" => Types::JsonValue::Null,
      "jsonValueBoolean" => Types::JsonValue::TDBool,
      "jsonValueNumber" => Types::JsonValue::TDNumber,
      "jsonValueString" => Types::JsonValue::TDString,
      "jsonValueArray" => Types::JsonValue::TDArray,
      "jsonValueObject" => Types::JsonValue::TDObject
    })
  end
end

require "./json_value/null"
require "./json_value/td_bool"
require "./json_value/td_number"
require "./json_value/td_string"
require "./json_value/td_array"
require "./json_value/td_object"
