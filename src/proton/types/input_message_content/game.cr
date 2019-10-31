# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A message with a game; not supported for channels or secret chats.
  # bot_user_id [::Int32] User identifier of the bot that owns the game.
  # game_short_name [::String] Short name of the game.
  class InputMessageContent::Game < Types::InputMessageContent
    property bot_user_id : ::Int32
    property game_short_name : ::String

    def initialize(@bot_user_id : ::Int32, @game_short_name : ::String)
    end
  end
end

