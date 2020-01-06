# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The order of the chat in the chat list has changed.
  # Instead of this update updateChatLastMessage, updateChatIsPinned or updateChatDraftMessage might be sent.
  class Update::ChatOrder < Types::Update
    include JSON::Serializable

    # Chat identifier
    property chat_id : ::Int64

    # New value of the order
    property order : ::String

    def initialize(@chat_id : ::Int64, @order : ::String)
    end
  end
end
