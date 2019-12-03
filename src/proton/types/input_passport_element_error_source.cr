# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains the description of an error in a Telegram Passport element; for bots only.
  abstract class InputPassportElementErrorSource < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "inputPassportElementErrorSourceUnspecified" => Types::InputPassportElementErrorSource::Unspecified,
      "inputPassportElementErrorSourceDataField" => Types::InputPassportElementErrorSource::DataField,
      "inputPassportElementErrorSourceFrontSide" => Types::InputPassportElementErrorSource::FrontSide,
      "inputPassportElementErrorSourceReverseSide" => Types::InputPassportElementErrorSource::ReverseSide,
      "inputPassportElementErrorSourceSelfie" => Types::InputPassportElementErrorSource::Selfie,
      "inputPassportElementErrorSourceTranslationFile" => Types::InputPassportElementErrorSource::TranslationFile,
      "inputPassportElementErrorSourceTranslationFiles" => Types::InputPassportElementErrorSource::TranslationFiles,
      "inputPassportElementErrorSourceFile" => Types::InputPassportElementErrorSource::File,
      "inputPassportElementErrorSourceFiles" => Types::InputPassportElementErrorSource::Files
    })
  end
end

require "./input_passport_element_error_source/unspecified"
require "./input_passport_element_error_source/data_field"
require "./input_passport_element_error_source/front_side"
require "./input_passport_element_error_source/reverse_side"
require "./input_passport_element_error_source/selfie"
require "./input_passport_element_error_source/translation_file"
require "./input_passport_element_error_source/translation_files"
require "./input_passport_element_error_source/file"
require "./input_passport_element_error_source/files"
