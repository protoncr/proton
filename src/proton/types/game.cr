# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a game.
  # id [::Int64] Game ID.
  # short_name [::String] Game short name.
  #   To share a game use the URL https://t.me/{bot_username}?game={game_short_name}.
  # title [::String] Game title.
  # text [Proton::Types::FormattedText] Game text, usually containing scoreboards for a game.
  # description [::String] Game description.
  # photo [Proton::Types::Photo] Game photo.
  # animation [Proton::Types::Animation, nil] Game animation; may be null.
  class Game < Types::Base
    property id : ::Int64
    property short_name : ::String
    property title : ::String
    property text : Proton::Types::FormattedText
    property description : ::String
    property photo : Proton::Types::Photo
    property animation : Proton::Types::Animation?

    def initialize(@id : ::Int64, @short_name : ::String, @title : ::String, @text : Proton::Types::FormattedText, @description : ::String, @photo : Proton::Types::Photo, @animation : Proton::Types::Animation? = nil)
    end
  end
end

