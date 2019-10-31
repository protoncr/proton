# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents a link to a WEBP or a TGS sticker.
  # id [::String] Unique identifier of the query result.
  # thumbnail_url [::String] URL of the sticker thumbnail, if it exists.
  # sticker_url [::String] The URL of the WEBP or a TGS sticker (sticker file size must not exceed 5MB).
  # sticker_width [::Int32] Width of the sticker.
  # sticker_height [::Int32] Height of the sticker.
  # reply_markup [Proton::Types::ReplyMarkup] The message reply markup.
  #   Must be of type replyMarkupInlineKeyboard or null.
  # input_message_content [Proton::Types::InputMessageContent] The content of the message to be sent.
  #   Must be one of the following types: InputMessageText, inputMessageSticker, InputMessageLocation,
  #   InputMessageVenue or InputMessageContact.
  class InputInlineQueryResult::Sticker < Types::InputInlineQueryResult
    property id : ::String
    property thumbnail_url : ::String
    property sticker_url : ::String
    property sticker_width : ::Int32
    property sticker_height : ::Int32
    property reply_markup : Proton::Types::ReplyMarkup
    property input_message_content : Proton::Types::InputMessageContent

    def initialize(@id : ::String, @thumbnail_url : ::String, @sticker_url : ::String, @sticker_width : ::Int32, @sticker_height : ::Int32, @reply_markup : Proton::Types::ReplyMarkup, @input_message_content : Proton::Types::InputMessageContent)
    end
  end
end

