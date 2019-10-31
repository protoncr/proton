# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents the categories of chats for which a list of frequently used chats can be retrieved.
  class TopChatCategory < Types::Base

    def initialize()
    end
  end
end

require "./top_chat_category/users"
  require "./top_chat_category/bots"
  require "./top_chat_category/groups"
  require "./top_chat_category/channels"
  require "./top_chat_category/inline_bots"
  require "./top_chat_category/calls"