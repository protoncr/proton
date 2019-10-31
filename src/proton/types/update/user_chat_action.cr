# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # User activity in the chat has changed.
  # chat_id [::Int64] Chat identifier.
  # user_id [::Int32] Identifier of a user performing an action.
  # action [Proton::Types::ChatAction] The action description.
  class Update::UserChatAction < Types::Update
    property chat_id : ::Int64
    property user_id : ::Int32
    property action : Proton::Types::ChatAction

    def initialize(@chat_id : ::Int64, @user_id : ::Int32, @action : Proton::Types::ChatAction)
    end
  end
end

