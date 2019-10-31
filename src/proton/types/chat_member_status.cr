# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Provides information about the status of a member in a chat.
  class ChatMemberStatus < Types::Base

    def initialize()
    end
  end
end

require "./chat_member_status/creator"
  require "./chat_member_status/administrator"
  require "./chat_member_status/member"
  require "./chat_member_status/restricted"
  require "./chat_member_status/left"
  require "./chat_member_status/banned"