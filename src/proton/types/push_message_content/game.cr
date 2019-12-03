# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message with a game.
  class PushMessageContent::Game < Types::PushMessageContent
    include JSON::Serializable

    # True, if the message is a pinned message with the specified content
    property is_pinned : ::Bool

    # Game title, empty for pinned game message
    property title : ::String? = nil

    def initialize(@is_pinned : ::Bool, @title : ::String? = nil)
    end
  end
end
