# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message with a game.
  class MessageContent::Game < Types::MessageContent
    include JSON::Serializable

    # Game
    property game : Proton::Types::Game

    def initialize(@game : Proton::Types::Game)
    end
  end
end
