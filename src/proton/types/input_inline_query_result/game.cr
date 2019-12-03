# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents a game.
  class InputInlineQueryResult::Game < Types::InputInlineQueryResult
    include JSON::Serializable

    # Unique identifier of the query result
    property id : ::String

    # Short name of the game
    property game_short_name : ::String

    # Message reply markup. Must be of type replyMarkupInlineKeyboard or null
    property reply_markup : Proton::Types::ReplyMarkup

    def initialize(@id : ::String, @game_short_name : ::String, @reply_markup : Proton::Types::ReplyMarkup)
    end
  end
end
