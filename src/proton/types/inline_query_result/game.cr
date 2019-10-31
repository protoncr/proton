# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents information about a game.
  # id [::String] Unique identifier of the query result.
  # game [Proton::Types::Game] Game result.
  class InlineQueryResult::Game < Types::InlineQueryResult
    property id : ::String
    property game : Proton::Types::Game

    def initialize(@id : ::String, @game : Proton::Types::Game)
    end
  end
end

