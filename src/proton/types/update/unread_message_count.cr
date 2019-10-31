# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Number of unread messages has changed.
  # This update is sent only if a message database is used.
  # unread_count [::Int32] Total number of unread messages.
  # unread_unmuted_count [::Int32] Total number of unread messages in unmuted chats.
  class Update::UnreadMessageCount < Types::Update
    property unread_count : ::Int32
    property unread_unmuted_count : ::Int32

    def initialize(@unread_count : ::Int32, @unread_unmuted_count : ::Int32)
    end
  end
end

