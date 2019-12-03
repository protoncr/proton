# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents a link to an animated (i.e.
  # without sound) H.264/MPEG-4 AVC video.
  class InputInlineQueryResult::AnimatedMpeg4 < Types::InputInlineQueryResult
    include JSON::Serializable

    # Unique identifier of the query result
    property id : ::String

    # Title of the result
    property title : ::String

    # URL of the static result thumbnail (JPEG or GIF), if it exists
    property thumbnail_url : ::String

    # The URL of the MPEG4-file (file size must not exceed 1MB)
    property mpeg4_url : ::String

    # Duration of the video, in seconds
    property mpeg4_duration : ::Int32

    # Width of the video
    property mpeg4_width : ::Int32

    # Height of the video
    property mpeg4_height : ::Int32

    # The message reply markup. Must be of type replyMarkupInlineKeyboard or null
    property reply_markup : Proton::Types::ReplyMarkup

    # The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageAnimation, InputMessageLocation, InputMessageVenue or InputMessageContact
    property input_message_content : Proton::Types::InputMessageContent

    def initialize(@id : ::String, @title : ::String, @thumbnail_url : ::String, @mpeg4_url : ::String, @mpeg4_duration : ::Int32, @mpeg4_width : ::Int32, @mpeg4_height : ::Int32, @reply_markup : Proton::Types::ReplyMarkup, @input_message_content : Proton::Types::InputMessageContent)
    end
  end
end
