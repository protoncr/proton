# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a game.
  class Game < Types::Base
    include JSON::Serializable

    # Game ID
    property id : ::String

    # Game short name. To share a game use the URL https://t.me/{bot_username}?game={game_short_name}
    property short_name : ::String

    # Game title
    property title : ::String

    # Game text, usually containing scoreboards for a game
    property text : Proton::Types::FormattedText

    # Game description
    property description : ::String

    # Game photo
    property photo : Proton::Types::Photo

    # Game animation; may be null
    property animation : Proton::Types::Animation? = nil

    def initialize(@id : ::String, @short_name : ::String, @title : ::String, @text : Proton::Types::FormattedText, @description : ::String, @photo : Proton::Types::Photo, @animation : Proton::Types::Animation? = nil)
    end
  end
end
