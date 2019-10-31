# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents a link to an animated GIF.
  # id [::String] Unique identifier of the query result.
  # title [::String] Title of the query result.
  # thumbnail_url [::String] URL of the static result thumbnail (JPEG or GIF), if it exists.
  # gif_url [::String] The URL of the GIF-file (file size must not exceed 1MB).
  # gif_duration [::Int32] Duration of the GIF, in seconds.
  # gif_width [::Int32] Width of the GIF.
  # gif_height [::Int32] Height of the GIF.
  # reply_markup [Proton::Types::ReplyMarkup] The message reply markup.
  #   Must be of type replyMarkupInlineKeyboard or null.
  # input_message_content [Proton::Types::InputMessageContent] The content of the message to be sent.
  #   Must be one of the following types: InputMessageText, InputMessageAnimation, InputMessageLocation,
  #   InputMessageVenue or InputMessageContact.
  class InputInlineQueryResult::AnimatedGif < Types::InputInlineQueryResult
    property id : ::String
    property title : ::String
    property thumbnail_url : ::String
    property gif_url : ::String
    property gif_duration : ::Int32
    property gif_width : ::Int32
    property gif_height : ::Int32
    property reply_markup : Proton::Types::ReplyMarkup
    property input_message_content : Proton::Types::InputMessageContent

    def initialize(@id : ::String, @title : ::String, @thumbnail_url : ::String, @gif_url : ::String, @gif_duration : ::Int32, @gif_width : ::Int32, @gif_height : ::Int32, @reply_markup : Proton::Types::ReplyMarkup, @input_message_content : Proton::Types::InputMessageContent)
    end
  end
end

