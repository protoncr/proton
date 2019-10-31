# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents a user contact.
  # id [::String] Unique identifier of the query result.
  # contact [Proton::Types::Contact] User contact.
  # thumbnail_url [::String] URL of the result thumbnail, if it exists.
  # thumbnail_width [::Int32] Thumbnail width, if known.
  # thumbnail_height [::Int32] Thumbnail height, if known.
  # reply_markup [Proton::Types::ReplyMarkup] The message reply markup.
  #   Must be of type replyMarkupInlineKeyboard or null.
  # input_message_content [Proton::Types::InputMessageContent] The content of the message to be sent.
  #   Must be one of the following types: InputMessageText, InputMessageLocation, InputMessageVenue or
  #   InputMessageContact.
  class InputInlineQueryResult::Contact < Types::InputInlineQueryResult
    property id : ::String
    property contact : Proton::Types::Contact
    property thumbnail_url : ::String
    property thumbnail_width : ::Int32
    property thumbnail_height : ::Int32
    property reply_markup : Proton::Types::ReplyMarkup
    property input_message_content : Proton::Types::InputMessageContent

    def initialize(@id : ::String, @contact : Proton::Types::Contact, @thumbnail_url : ::String, @thumbnail_width : ::Int32, @thumbnail_height : ::Int32, @reply_markup : Proton::Types::ReplyMarkup, @input_message_content : Proton::Types::InputMessageContent)
    end
  end
end

