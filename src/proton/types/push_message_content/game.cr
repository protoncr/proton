# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message with a game.
  class PushMessageContent::Game < Types::PushMessageContent
    include JSON::Serializable

    # Game title, empty for pinned game message
    property title : ::String? = nil

    # True, if the message is a pinned message with the specified content
    property is_pinned : ::Bool = false

    def initialize(@title : ::String? = nil, @is_pinned : ::Bool = false)
    end
  end
end
