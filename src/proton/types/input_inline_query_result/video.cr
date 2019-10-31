# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents a link to a page containing an embedded video player or a video file.
  # id [::String] Unique identifier of the query result.
  # title [::String] Title of the result.
  # description [::String] A short description of the result, if known.
  # thumbnail_url [::String] The URL of the video thumbnail (JPEG), if it exists.
  # video_url [::String] URL of the embedded video player or video file.
  # mime_type [::String] MIME type of the content of the video URL, only "text/html" or "video/mp4" are currently
  #   supported.
  # video_width [::Int32] Width of the video.
  # video_height [::Int32] Height of the video.
  # video_duration [::Int32] Video duration, in seconds.
  # reply_markup [Proton::Types::ReplyMarkup] The message reply markup.
  #   Must be of type replyMarkupInlineKeyboard or null.
  # input_message_content [Proton::Types::InputMessageContent] The content of the message to be sent.
  #   Must be one of the following types: InputMessageText, InputMessageVideo, InputMessageLocation, InputMessageVenue
  #   or InputMessageContact.
  class InputInlineQueryResult::Video < Types::InputInlineQueryResult
    property id : ::String
    property title : ::String
    property description : ::String
    property thumbnail_url : ::String
    property video_url : ::String
    property mime_type : ::String
    property video_width : ::Int32
    property video_height : ::Int32
    property video_duration : ::Int32
    property reply_markup : Proton::Types::ReplyMarkup
    property input_message_content : Proton::Types::InputMessageContent

    def initialize(@id : ::String, @title : ::String, @description : ::String, @thumbnail_url : ::String, @video_url : ::String, @mime_type : ::String, @video_width : ::Int32, @video_height : ::Int32, @video_duration : ::Int32, @reply_markup : Proton::Types::ReplyMarkup, @input_message_content : Proton::Types::InputMessageContent)
    end
  end
end

