# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Number of unread chats, i.e.
  # with unread messages or marked as unread, has changed.
  # This update is sent only if a message database is used.
  # unread_count [::Int32] Total number of unread chats.
  # unread_unmuted_count [::Int32] Total number of unread unmuted chats.
  # marked_as_unread_count [::Int32] Total number of chats marked as unread.
  # marked_as_unread_unmuted_count [::Int32] Total number of unmuted chats marked as unread.
  class Update::UnreadChatCount < Types::Update
    property unread_count : ::Int32
    property unread_unmuted_count : ::Int32
    property marked_as_unread_count : ::Int32
    property marked_as_unread_unmuted_count : ::Int32

    def initialize(@unread_count : ::Int32, @unread_unmuted_count : ::Int32, @marked_as_unread_count : ::Int32, @marked_as_unread_unmuted_count : ::Int32)
    end
  end
end

