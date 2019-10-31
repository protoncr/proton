# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The order of the chat in the chat list has changed.
  # Instead of this update updateChatLastMessage, updateChatIsPinned or updateChatDraftMessage might be sent.
  # chat_id [::Int64] Chat identifier.
  # order [::Int64] New value of the order.
  class Update::ChatOrder < Types::Update
    property chat_id : ::Int64
    property order : ::Int64

    def initialize(@chat_id : ::Int64, @order : ::Int64)
    end
  end
end

