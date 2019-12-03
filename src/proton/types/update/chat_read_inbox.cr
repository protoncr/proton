# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Incoming messages were read or number of unread messages has been changed.
  class Update::ChatReadInbox < Types::Update
    include JSON::Serializable

    # Chat identifier
    property chat_id : ::Int64

    # Identifier of the last read incoming message
    property last_read_inbox_message_id : ::Int64

    # The number of unread messages left in the chat
    property unread_count : ::Int32

    def initialize(@chat_id : ::Int64, @last_read_inbox_message_id : ::Int64, @unread_count : ::Int32)
    end
  end
end
