# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents link to a JPEG image.
  # id [::String] Unique identifier of the query result.
  # title [::String] Title of the result, if known.
  # description [::String] A short description of the result, if known.
  # thumbnail_url [::String] URL of the photo thumbnail, if it exists.
  # photo_url [::String] The URL of the JPEG photo (photo size must not exceed 5MB).
  # photo_width [::Int32] Width of the photo.
  # photo_height [::Int32] Height of the photo.
  # reply_markup [Proton::Types::ReplyMarkup] The message reply markup.
  #   Must be of type replyMarkupInlineKeyboard or null.
  # input_message_content [Proton::Types::InputMessageContent] The content of the message to be sent.
  #   Must be one of the following types: InputMessageText, InputMessagePhoto, InputMessageLocation, InputMessageVenue
  #   or InputMessageContact.
  class InputInlineQueryResult::Photo < Types::InputInlineQueryResult
    property id : ::String
    property title : ::String
    property description : ::String
    property thumbnail_url : ::String
    property photo_url : ::String
    property photo_width : ::Int32
    property photo_height : ::Int32
    property reply_markup : Proton::Types::ReplyMarkup
    property input_message_content : Proton::Types::InputMessageContent

    def initialize(@id : ::String, @title : ::String, @description : ::String, @thumbnail_url : ::String, @photo_url : ::String, @photo_width : ::Int32, @photo_height : ::Int32, @reply_markup : Proton::Types::ReplyMarkup, @input_message_content : Proton::Types::InputMessageContent)
    end
  end
end

