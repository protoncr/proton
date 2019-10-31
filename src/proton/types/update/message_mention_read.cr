# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A message with an unread mention was read.
  # chat_id [::Int64] Chat identifier.
  # message_id [::Int64] Message identifier.
  # unread_mention_count [::Int32] The new number of unread mention messages left in the chat.
  class Update::MessageMentionRead < Types::Update
    property chat_id : ::Int64
    property message_id : ::Int64
    property unread_mention_count : ::Int32

    def initialize(@chat_id : ::Int64, @message_id : ::Int64, @unread_mention_count : ::Int32)
    end
  end
end

