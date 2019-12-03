# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents a link to a file.
  class InputInlineQueryResult::Document < Types::InputInlineQueryResult
    include JSON::Serializable

    # Unique identifier of the query result
    property id : ::String

    # Title of the resulting file
    property title : ::String

    # Short description of the result, if known
    property description : ::String

    # URL of the file
    property document_url : ::String

    # MIME type of the file content; only "application/pdf" and "application/zip" are currently allowed
    property mime_type : ::String

    # The URL of the file thumbnail, if it exists
    property thumbnail_url : ::String

    # Width of the thumbnail
    property thumbnail_width : ::Int32

    # Height of the thumbnail
    property thumbnail_height : ::Int32

    # The message reply markup. Must be of type replyMarkupInlineKeyboard or null
    property reply_markup : Proton::Types::ReplyMarkup

    # The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageDocument, InputMessageLocation, InputMessageVenue or InputMessageContact
    property input_message_content : Proton::Types::InputMessageContent

    def initialize(@id : ::String, @title : ::String, @description : ::String, @document_url : ::String, @mime_type : ::String, @thumbnail_url : ::String, @thumbnail_width : ::Int32, @thumbnail_height : ::Int32, @reply_markup : Proton::Types::ReplyMarkup, @input_message_content : Proton::Types::InputMessageContent)
    end
  end
end
