# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The message content has changed.
  # chat_id [::Int64] Chat identifier.
  # message_id [::Int64] Message identifier.
  # new_content [Proton::Types::MessageContent] New message content.
  class Update::MessageContent < Types::Update
    property chat_id : ::Int64
    property message_id : ::Int64
    property new_content : Proton::Types::MessageContent

    def initialize(@chat_id : ::Int64, @message_id : ::Int64, @new_content : Proton::Types::MessageContent)
    end
  end
end

