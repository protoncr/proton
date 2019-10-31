# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Incoming messages were read or number of unread messages has been changed.
  # chat_id [::Int64] Chat identifier.
  # last_read_inbox_message_id [::Int64] Identifier of the last read incoming message.
  # unread_count [::Int32] The number of unread messages left in the chat.
  class Update::ChatReadInbox < Types::Update
    property chat_id : ::Int64
    property last_read_inbox_message_id : ::Int64
    property unread_count : ::Int32

    def initialize(@chat_id : ::Int64, @last_read_inbox_message_id : ::Int64, @unread_count : ::Int32)
    end
  end
end

