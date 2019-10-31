# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A message with a sticker.
  # sticker [Proton::Types::Sticker, nil] Message content; may be null.
  # emoji [::String, nil] Emoji corresponding to the sticker; may be empty.
  # is_pinned [::Bool] True, if the message is a pinned message with the specified content.
  class PushMessageContent::Sticker < Types::PushMessageContent
    property sticker : Proton::Types::Sticker?
    property emoji : ::String?
    property is_pinned : ::Bool

    def initialize(@is_pinned : ::Bool, @sticker : Proton::Types::Sticker? = nil, @emoji : ::String? = nil)
    end
  end
end

