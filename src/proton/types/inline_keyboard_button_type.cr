# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes the type of an inline keyboard button.
  abstract class InlineKeyboardButtonType < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "inlineKeyboardButtonTypeUrl" => Types::InlineKeyboardButtonType::Url,
      "inlineKeyboardButtonTypeLoginUrl" => Types::InlineKeyboardButtonType::LoginUrl,
      "inlineKeyboardButtonTypeCallback" => Types::InlineKeyboardButtonType::Callback,
      "inlineKeyboardButtonTypeCallbackGame" => Types::InlineKeyboardButtonType::CallbackGame,
      "inlineKeyboardButtonTypeSwitchInline" => Types::InlineKeyboardButtonType::SwitchInline,
      "inlineKeyboardButtonTypeBuy" => Types::InlineKeyboardButtonType::Buy
    })
  end
end

require "./inline_keyboard_button_type/url"
require "./inline_keyboard_button_type/login_url"
require "./inline_keyboard_button_type/callback"
require "./inline_keyboard_button_type/callback_game"
require "./inline_keyboard_button_type/switch_inline"
require "./inline_keyboard_button_type/buy"
