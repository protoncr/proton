# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message with a game; not supported for channels or secret chats.
  class InputMessageContent::Game < Types::InputMessageContent
    include JSON::Serializable

    # User identifier of the bot that owns the game
    property bot_user_id : ::Int32

    # Short name of the game
    property game_short_name : ::String

    def initialize(@bot_user_id : ::Int32, @game_short_name : ::String)
    end
  end
end
