# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents a link to a page containing an embedded video player or a video file.
  class InputInlineQueryResult::Video < Types::InputInlineQueryResult
    include JSON::Serializable

    # Unique identifier of the query result
    property id : ::String

    # Title of the result
    property title : ::String

    # A short description of the result, if known
    property description : ::String

    # The URL of the video thumbnail (JPEG), if it exists
    property thumbnail_url : ::String

    # URL of the embedded video player or video file
    property video_url : ::String

    # MIME type of the content of the video URL, only "text/html" or "video/mp4" are currently supported
    property mime_type : ::String

    # Width of the video
    property video_width : ::Int32

    # Height of the video
    property video_height : ::Int32

    # Video duration, in seconds
    property video_duration : ::Int32

    # The message reply markup. Must be of type replyMarkupInlineKeyboard or null
    property reply_markup : Proton::Types::ReplyMarkup

    # The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageVideo, InputMessageLocation, InputMessageVenue or InputMessageContact
    property input_message_content : Proton::Types::InputMessageContent

    def initialize(@id : ::String, @title : ::String, @description : ::String, @thumbnail_url : ::String, @video_url : ::String, @mime_type : ::String, @video_width : ::Int32, @video_height : ::Int32, @video_duration : ::Int32, @reply_markup : Proton::Types::ReplyMarkup, @input_message_content : Proton::Types::InputMessageContent)
    end
  end
end
