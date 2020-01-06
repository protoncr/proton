# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A new high score was achieved in a game.
  class PushMessageContent::GameScore < Types::PushMessageContent
    include JSON::Serializable

    # New score, 0 for pinned message
    property score : ::Int32

    # Game title, empty for pinned message
    property title : ::String? = nil

    # True, if the message is a pinned message with the specified content
    property is_pinned : ::Bool = false

    def initialize(@score : ::Int32, @title : ::String? = nil, @is_pinned : ::Bool = false)
    end
  end
end
