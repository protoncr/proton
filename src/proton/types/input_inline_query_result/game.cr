# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents a game.
  # id [::String] Unique identifier of the query result.
  # game_short_name [::String] Short name of the game.
  # reply_markup [Proton::Types::ReplyMarkup] Message reply markup.
  #   Must be of type replyMarkupInlineKeyboard or null.
  class InputInlineQueryResult::Game < Types::InputInlineQueryResult
    property id : ::String
    property game_short_name : ::String
    property reply_markup : Proton::Types::ReplyMarkup

    def initialize(@id : ::String, @game_short_name : ::String, @reply_markup : Proton::Types::ReplyMarkup)
    end
  end
end

