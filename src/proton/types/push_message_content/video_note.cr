# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A video note message.
  # video_note [Proton::Types::VideoNote, nil] Message content; may be null.
  # is_pinned [::Bool] True, if the message is a pinned message with the specified content.
  class PushMessageContent::VideoNote < Types::PushMessageContent
    property video_note : Proton::Types::VideoNote?
    property is_pinned : ::Bool

    def initialize(@is_pinned : ::Bool, @video_note : Proton::Types::VideoNote? = nil)
    end
  end
end

