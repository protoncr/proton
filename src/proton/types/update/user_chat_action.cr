# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # User activity in the chat has changed.
  class Update::UserChatAction < Types::Update
    include JSON::Serializable

    # Chat identifier
    property chat_id : ::Int32

    # Identifier of a user performing an action
    property user_id : ::Int32

    # The action description
    property action : Proton::Types::ChatAction

    def initialize(@chat_id : ::Int32, @user_id : ::Int32, @action : Proton::Types::ChatAction)
    end
  end
end
