# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents a link to an animated GIF.
  class InputInlineQueryResult::AnimatedGif < Types::InputInlineQueryResult
    include JSON::Serializable

    # Unique identifier of the query result
    property id : ::String

    # Title of the query result
    property title : ::String

    # URL of the static result thumbnail (JPEG or GIF), if it exists
    property thumbnail_url : ::String

    # The URL of the GIF-file (file size must not exceed 1MB)
    property gif_url : ::String

    # Duration of the GIF, in seconds
    property gif_duration : ::Int32

    # Width of the GIF
    property gif_width : ::Int32

    # Height of the GIF
    property gif_height : ::Int32

    # The message reply markup. Must be of type replyMarkupInlineKeyboard or null
    property reply_markup : Proton::Types::ReplyMarkup

    # The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageAnimation, InputMessageLocation, InputMessageVenue or InputMessageContact
    property input_message_content : Proton::Types::InputMessageContent

    def initialize(@id : ::String, @title : ::String, @thumbnail_url : ::String, @gif_url : ::String, @gif_duration : ::Int32, @gif_width : ::Int32, @gif_height : ::Int32, @reply_markup : Proton::Types::ReplyMarkup, @input_message_content : Proton::Types::InputMessageContent)
    end
  end
end
