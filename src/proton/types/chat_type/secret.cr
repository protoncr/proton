# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A secret chat with a user.
  class ChatType::Secret < Types::ChatType
    include JSON::Serializable

    # Secret chat identifier
    property secret_chat_id : ::Int32

    # User identifier of the secret chat peer
    property user_id : ::Int32

    def initialize(@secret_chat_id : ::Int32, @user_id : ::Int32)
    end
  end
end
