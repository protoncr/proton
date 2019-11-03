# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents result of checking whether a username can be set for a chat.
  class CheckChatUsernameResult < Types::Base

    def initialize()
    end
  end
end

require "./check_chat_username_result/ok"
require "./check_chat_username_result/username_invalid"
require "./check_chat_username_result/username_occupied"
require "./check_chat_username_result/public_chats_too_much"
require "./check_chat_username_result/public_groups_unavailable"