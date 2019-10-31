# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A message was edited.
  # Changes in the message content will come in a separate updateMessageContent.
  # chat_id [::Int64] Chat identifier.
  # message_id [::Int64] Message identifier.
  # edit_date [::Int32] Point in time (Unix timestamp) when the message was edited.
  # reply_markup [Proton::Types::ReplyMarkup, nil] New message reply markup; may be null.
  class Update::MessageEdited < Types::Update
    property chat_id : ::Int64
    property message_id : ::Int64
    property edit_date : ::Int32
    property reply_markup : Proton::Types::ReplyMarkup?

    def initialize(@chat_id : ::Int64, @message_id : ::Int64, @edit_date : ::Int32, @reply_markup : Proton::Types::ReplyMarkup? = nil)
    end
  end
end

