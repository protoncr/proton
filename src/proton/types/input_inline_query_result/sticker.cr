# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents a link to a WEBP or a TGS sticker.
  class InputInlineQueryResult::Sticker < Types::InputInlineQueryResult
    include JSON::Serializable

    # Unique identifier of the query result
    property id : ::String

    # URL of the sticker thumbnail, if it exists
    property thumbnail_url : ::String

    # The URL of the WEBP or a TGS sticker (sticker file size must not exceed 5MB)
    property sticker_url : ::String

    # Width of the sticker
    property sticker_width : ::Int32

    # Height of the sticker
    property sticker_height : ::Int32

    # The message reply markup. Must be of type replyMarkupInlineKeyboard or null
    property reply_markup : Proton::Types::ReplyMarkup

    # The content of the message to be sent. Must be one of the following types: InputMessageText, inputMessageSticker, InputMessageLocation, InputMessageVenue or InputMessageContact
    property input_message_content : Proton::Types::InputMessageContent

    def initialize(@id : ::String, @thumbnail_url : ::String, @sticker_url : ::String, @sticker_width : ::Int32, @sticker_height : ::Int32, @reply_markup : Proton::Types::ReplyMarkup, @input_message_content : Proton::Types::InputMessageContent)
    end
  end
end
