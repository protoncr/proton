# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents a link to an animated (i.e.
  # without sound) H.264/MPEG-4 AVC video.
  # id [::String] Unique identifier of the query result.
  # title [::String] Title of the result.
  # thumbnail_url [::String] URL of the static result thumbnail (JPEG or GIF), if it exists.
  # mpeg4_url [::String] The URL of the MPEG4-file (file size must not exceed 1MB).
  # mpeg4_duration [::Int32] Duration of the video, in seconds.
  # mpeg4_width [::Int32] Width of the video.
  # mpeg4_height [::Int32] Height of the video.
  # reply_markup [Proton::Types::ReplyMarkup] The message reply markup.
  #   Must be of type replyMarkupInlineKeyboard or null.
  # input_message_content [Proton::Types::InputMessageContent] The content of the message to be sent.
  #   Must be one of the following types: InputMessageText, InputMessageAnimation, InputMessageLocation,
  #   InputMessageVenue or InputMessageContact.
  class InputInlineQueryResult::AnimatedMpeg4 < Types::InputInlineQueryResult
    property id : ::String
    property title : ::String
    property thumbnail_url : ::String
    property mpeg4_url : ::String
    property mpeg4_duration : ::Int32
    property mpeg4_width : ::Int32
    property mpeg4_height : ::Int32
    property reply_markup : Proton::Types::ReplyMarkup
    property input_message_content : Proton::Types::InputMessageContent

    def initialize(@id : ::String, @title : ::String, @thumbnail_url : ::String, @mpeg4_url : ::String, @mpeg4_duration : ::Int32, @mpeg4_width : ::Int32, @mpeg4_height : ::Int32, @reply_markup : Proton::Types::ReplyMarkup, @input_message_content : Proton::Types::InputMessageContent)
    end
  end
end

