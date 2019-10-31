# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The chat unread_mention_count has changed.
  # chat_id [::Int64] Chat identifier.
  # unread_mention_count [::Int32] The number of unread mention messages left in the chat.
  class Update::ChatUnreadMentionCount < Types::Update
    property chat_id : ::Int64
    property unread_mention_count : ::Int32

    def initialize(@chat_id : ::Int64, @unread_mention_count : ::Int32)
    end
  end
end

