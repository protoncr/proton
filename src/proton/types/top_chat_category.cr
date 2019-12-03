# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents the categories of chats for which a list of frequently used chats can be retrieved.
  abstract class TopChatCategory < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "topChatCategoryUsers" => Types::TopChatCategory::Users,
      "topChatCategoryBots" => Types::TopChatCategory::Bots,
      "topChatCategoryGroups" => Types::TopChatCategory::Groups,
      "topChatCategoryChannels" => Types::TopChatCategory::Channels,
      "topChatCategoryInlineBots" => Types::TopChatCategory::InlineBots,
      "topChatCategoryCalls" => Types::TopChatCategory::Calls
    })
  end
end

require "./top_chat_category/users"
require "./top_chat_category/bots"
require "./top_chat_category/groups"
require "./top_chat_category/channels"
require "./top_chat_category/inline_bots"
require "./top_chat_category/calls"
