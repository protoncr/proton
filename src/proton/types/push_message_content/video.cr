# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A video message.
  # video [Proton::Types::Video, nil] Message content; may be null.
  # caption [::String] Video caption.
  # is_secret [::Bool] True, if the video is secret.
  # is_pinned [::Bool] True, if the message is a pinned message with the specified content.
  class PushMessageContent::Video < Types::PushMessageContent
    property video : Proton::Types::Video?
    property caption : ::String
    property is_secret : ::Bool
    property is_pinned : ::Bool

    def initialize(@caption : ::String, @is_secret : ::Bool, @is_pinned : ::Bool, @video : Proton::Types::Video? = nil)
    end
  end
end

