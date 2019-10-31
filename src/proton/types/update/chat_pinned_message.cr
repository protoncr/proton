# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The chat pinned message was changed.
  # chat_id [::Int64] Chat identifier.
  # pinned_message_id [::Int64] The new identifier of the pinned message; 0 if there is no pinned message in the chat.
  class Update::ChatPinnedMessage < Types::Update
    property chat_id : ::Int64
    property pinned_message_id : ::Int64

    def initialize(@chat_id : ::Int64, @pinned_message_id : ::Int64)
    end
  end
end

