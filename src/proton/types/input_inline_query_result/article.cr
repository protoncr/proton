# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents a link to an article or web page.
  class InputInlineQueryResult::Article < Types::InputInlineQueryResult
    include JSON::Serializable

    # Unique identifier of the query result
    property id : ::String

    # URL of the result, if it exists
    property url : ::String

    # True, if the URL must be not shown
    property hide_url : ::Bool

    # Title of the result
    property title : ::String

    # A short description of the result
    property description : ::String

    # URL of the result thumbnail, if it exists
    property thumbnail_url : ::String

    # Thumbnail width, if known
    property thumbnail_width : ::Int32

    # Thumbnail height, if known
    property thumbnail_height : ::Int32

    # The message reply markup. Must be of type replyMarkupInlineKeyboard or null
    property reply_markup : Proton::Types::ReplyMarkup

    # The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageLocation, InputMessageVenue or InputMessageContact
    property input_message_content : Proton::Types::InputMessageContent

    def initialize(@id : ::String, @url : ::String, @hide_url : ::Bool, @title : ::String, @description : ::String, @thumbnail_url : ::String, @thumbnail_width : ::Int32, @thumbnail_height : ::Int32, @reply_markup : Proton::Types::ReplyMarkup, @input_message_content : Proton::Types::InputMessageContent)
    end
  end
end
