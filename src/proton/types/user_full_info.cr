# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains full information about a user (except the full list of profile photos).
  class UserFullInfo < Types::Base
    include JSON::Serializable

    # True, if the user is blacklisted by the current user
    property is_blocked : ::Bool

    # True, if the user can be called
    property can_be_called : ::Bool

    # True, if the user can't be called due to their privacy settings
    property has_private_calls : ::Bool

    # A short user bio
    property bio : ::String

    # For bots, the text that is included with the link when users share the bot
    property share_text : ::String

    # Number of group chats where both the other user and the current user are a member; 0 for the current user
    property group_in_common_count : ::Int32

    # If the user is a bot, information about the bot; may be null
    property bot_info : Proton::Types::BotInfo? = nil

    def initialize(@is_blocked : ::Bool, @can_be_called : ::Bool, @has_private_calls : ::Bool, @bio : ::String, @share_text : ::String, @group_in_common_count : ::Int32, @bot_info : Proton::Types::BotInfo? = nil)
    end
  end
end
