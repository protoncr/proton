# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents link to a JPEG image.
  class InputInlineQueryResult::Photo < Types::InputInlineQueryResult
    include JSON::Serializable

    # Unique identifier of the query result
    property id : ::String

    # Title of the result, if known
    property title : ::String

    # A short description of the result, if known
    property description : ::String

    # URL of the photo thumbnail, if it exists
    property thumbnail_url : ::String

    # The URL of the JPEG photo (photo size must not exceed 5MB)
    property photo_url : ::String

    # Width of the photo
    property photo_width : ::Int32

    # Height of the photo
    property photo_height : ::Int32

    # The message reply markup. Must be of type replyMarkupInlineKeyboard or null
    property reply_markup : Proton::Types::ReplyMarkup

    # The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessagePhoto, InputMessageLocation, InputMessageVenue or InputMessageContact
    property input_message_content : Proton::Types::InputMessageContent

    def initialize(@id : ::String, @title : ::String, @description : ::String, @thumbnail_url : ::String, @photo_url : ::String, @photo_width : ::Int32, @photo_height : ::Int32, @reply_markup : Proton::Types::ReplyMarkup, @input_message_content : Proton::Types::InputMessageContent)
    end
  end
end
