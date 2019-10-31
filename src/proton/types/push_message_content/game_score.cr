# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A new high score was achieved in a game.
  # title [::String, nil] Game title, empty for pinned message.
  # score [::Int32] New score, 0 for pinned message.
  # is_pinned [::Bool] True, if the message is a pinned message with the specified content.
  class PushMessageContent::GameScore < Types::PushMessageContent
    property title : ::String?
    property score : ::Int32
    property is_pinned : ::Bool

    def initialize(@score : ::Int32, @is_pinned : ::Bool, @title : ::String? = nil)
    end
  end
end

