# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message was edited.
  # Changes in the message content will come in a separate updateMessageContent.
  class Update::MessageEdited < Types::Update
    include JSON::Serializable

    # Chat identifier
    property chat_id : ::Int32

    # Message identifier
    property message_id : ::Int32

    # Point in time (Unix timestamp) when the message was edited
    property edit_date : ::Int32

    # New message reply markup; may be null
    property reply_markup : Proton::Types::ReplyMarkup? = nil

    def initialize(@chat_id : ::Int32, @message_id : ::Int32, @edit_date : ::Int32, @reply_markup : Proton::Types::ReplyMarkup? = nil)
    end
  end
end
