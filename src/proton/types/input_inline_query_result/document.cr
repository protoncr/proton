# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents a link to a file.
  # id [::String] Unique identifier of the query result.
  # title [::String] Title of the resulting file.
  # description [::String] Short description of the result, if known.
  # document_url [::String] URL of the file.
  # mime_type [::String] MIME type of the file content; only "application/pdf" and "application/zip" are currently
  #   allowed.
  # thumbnail_url [::String] The URL of the file thumbnail, if it exists.
  # thumbnail_width [::Int32] Width of the thumbnail.
  # thumbnail_height [::Int32] Height of the thumbnail.
  # reply_markup [Proton::Types::ReplyMarkup] The message reply markup.
  #   Must be of type replyMarkupInlineKeyboard or null.
  # input_message_content [Proton::Types::InputMessageContent] The content of the message to be sent.
  #   Must be one of the following types: InputMessageText, InputMessageDocument, InputMessageLocation,
  #   InputMessageVenue or InputMessageContact.
  class InputInlineQueryResult::Document < Types::InputInlineQueryResult
    property id : ::String
    property title : ::String
    property description : ::String
    property document_url : ::String
    property mime_type : ::String
    property thumbnail_url : ::String
    property thumbnail_width : ::Int32
    property thumbnail_height : ::Int32
    property reply_markup : Proton::Types::ReplyMarkup
    property input_message_content : Proton::Types::InputMessageContent

    def initialize(@id : ::String, @title : ::String, @description : ::String, @document_url : ::String, @mime_type : ::String, @thumbnail_url : ::String, @thumbnail_width : ::Int32, @thumbnail_height : ::Int32, @reply_markup : Proton::Types::ReplyMarkup, @input_message_content : Proton::Types::InputMessageContent)
    end
  end
end

