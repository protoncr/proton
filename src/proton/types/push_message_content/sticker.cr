# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message with a sticker.
  class PushMessageContent::Sticker < Types::PushMessageContent
    include JSON::Serializable

    # True, if the message is a pinned message with the specified content
    property is_pinned : ::Bool

    # Message content; may be null
    property sticker : Proton::Types::Sticker? = nil

    # Emoji corresponding to the sticker; may be empty
    property emoji : ::String? = nil

    def initialize(@is_pinned : ::Bool, @sticker : Proton::Types::Sticker? = nil, @emoji : ::String? = nil)
    end
  end
end
