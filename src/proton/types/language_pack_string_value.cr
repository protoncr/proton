# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents the value of a string in a language pack.
  abstract class LanguagePackStringValue < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "languagePackStringValueOrdinary" => Types::LanguagePackStringValue::Ordinary,
      "languagePackStringValuePluralized" => Types::LanguagePackStringValue::Pluralized,
      "languagePackStringValueDeleted" => Types::LanguagePackStringValue::Deleted
    })
  end
end

require "./language_pack_string_value/ordinary"
require "./language_pack_string_value/pluralized"
require "./language_pack_string_value/deleted"
