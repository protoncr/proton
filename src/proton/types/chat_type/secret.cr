# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A secret chat with a user.
  # secret_chat_id [::Int32] Secret chat identifier.
  # user_id [::Int32] User identifier of the secret chat peer.
  class ChatType::Secret < Types::ChatType
    property secret_chat_id : ::Int32
    property user_id : ::Int32

    def initialize(@secret_chat_id : ::Int32, @user_id : ::Int32)
    end
  end
end

