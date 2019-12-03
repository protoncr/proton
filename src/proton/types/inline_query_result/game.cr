# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents information about a game.
  class InlineQueryResult::Game < Types::InlineQueryResult
    include JSON::Serializable

    # Unique identifier of the query result
    property id : ::String

    # Game result
    property game : Proton::Types::Game

    def initialize(@id : ::String, @game : Proton::Types::Game)
    end
  end
end
