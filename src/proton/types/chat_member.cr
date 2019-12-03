# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # A user with information about joining/leaving a chat.
  class ChatMember < Types::Base
    include JSON::Serializable

    # User identifier of the chat member
    property user_id : ::Int32

    # Identifier of a user that invited/promoted/banned this member in the chat; 0 if unknown
    property inviter_user_id : ::Int32

    # Point in time (Unix timestamp) when the user joined a chat
    property joined_chat_date : ::Int32

    # Status of the member in the chat
    property status : Proton::Types::ChatMemberStatus

    # If the user is a bot, information about the bot; may be null. Can be null even for a bot if the bot is not a chat member
    property bot_info : Proton::Types::BotInfo? = nil

    def initialize(@user_id : ::Int32, @inviter_user_id : ::Int32, @joined_chat_date : ::Int32, @status : Proton::Types::ChatMemberStatus, @bot_info : Proton::Types::BotInfo? = nil)
    end
  end
end
