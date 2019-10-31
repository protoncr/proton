# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A message with a game.
  # title [::String, nil] Game title, empty for pinned game message.
  # is_pinned [::Bool] True, if the message is a pinned message with the specified content.
  class PushMessageContent::Game < Types::PushMessageContent
    property title : ::String?
    property is_pinned : ::Bool

    def initialize(@is_pinned : ::Bool, @title : ::String? = nil)
    end
  end
end

