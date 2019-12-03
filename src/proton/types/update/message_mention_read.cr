# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message with an unread mention was read.
  class Update::MessageMentionRead < Types::Update
    include JSON::Serializable

    # Chat identifier
    property chat_id : ::Int32

    # Message identifier
    property message_id : ::Int32

    # The new number of unread mention messages left in the chat
    property unread_mention_count : ::Int32

    def initialize(@chat_id : ::Int32, @message_id : ::Int32, @unread_mention_count : ::Int32)
    end
  end
end
