# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a keyboard button type.
  abstract class KeyboardButtonType < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "keyboardButtonTypeText" => Types::KeyboardButtonType::Text,
      "keyboardButtonTypeRequestPhoneNumber" => Types::KeyboardButtonType::RequestPhoneNumber,
      "keyboardButtonTypeRequestLocation" => Types::KeyboardButtonType::RequestLocation
    })
  end
end

require "./keyboard_button_type/text"
require "./keyboard_button_type/request_phone_number"
require "./keyboard_button_type/request_location"
