# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Number of unread messages has changed.
  # This update is sent only if a message database is used.
  class Update::UnreadMessageCount < Types::Update
    include JSON::Serializable

    # Total number of unread messages
    property unread_count : ::Int32

    # Total number of unread messages in unmuted chats
    property unread_unmuted_count : ::Int32

    def initialize(@unread_count : ::Int32, @unread_unmuted_count : ::Int32)
    end
  end
end
