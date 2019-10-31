# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Specifies the kind of chat members to return in searchChatMembers.
  class ChatMembersFilter < Types::Base

    def initialize()
    end
  end
end

require "./chat_members_filter/contacts"
  require "./chat_members_filter/administrators"
  require "./chat_members_filter/members"
  require "./chat_members_filter/restricted"
  require "./chat_members_filter/banned"
  require "./chat_members_filter/bots"