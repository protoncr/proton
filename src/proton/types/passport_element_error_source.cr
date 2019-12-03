# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains the description of an error in a Telegram Passport element.
  abstract class PassportElementErrorSource < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "passportElementErrorSourceUnspecified" => Types::PassportElementErrorSource::Unspecified,
      "passportElementErrorSourceDataField" => Types::PassportElementErrorSource::DataField,
      "passportElementErrorSourceFrontSide" => Types::PassportElementErrorSource::FrontSide,
      "passportElementErrorSourceReverseSide" => Types::PassportElementErrorSource::ReverseSide,
      "passportElementErrorSourceSelfie" => Types::PassportElementErrorSource::Selfie,
      "passportElementErrorSourceTranslationFile" => Types::PassportElementErrorSource::TranslationFile,
      "passportElementErrorSourceTranslationFiles" => Types::PassportElementErrorSource::TranslationFiles,
      "passportElementErrorSourceFile" => Types::PassportElementErrorSource::File,
      "passportElementErrorSourceFiles" => Types::PassportElementErrorSource::Files
    })
  end
end

require "./passport_element_error_source/unspecified"
require "./passport_element_error_source/data_field"
require "./passport_element_error_source/front_side"
require "./passport_element_error_source/reverse_side"
require "./passport_element_error_source/selfie"
require "./passport_element_error_source/translation_file"
require "./passport_element_error_source/translation_files"
require "./passport_element_error_source/file"
require "./passport_element_error_source/files"
