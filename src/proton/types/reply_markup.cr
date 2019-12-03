# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a description of a custom keyboard and actions that can be done with it to quickly reply to bots.
  abstract class ReplyMarkup < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "replyMarkupRemoveKeyboard" => Types::ReplyMarkup::RemoveKeyboard,
      "replyMarkupForceReply" => Types::ReplyMarkup::ForceReply,
      "replyMarkupShowKeyboard" => Types::ReplyMarkup::ShowKeyboard,
      "replyMarkupInlineKeyboard" => Types::ReplyMarkup::InlineKeyboard
    })
  end
end

require "./reply_markup/remove_keyboard"
require "./reply_markup/force_reply"
require "./reply_markup/show_keyboard"
require "./reply_markup/inline_keyboard"
