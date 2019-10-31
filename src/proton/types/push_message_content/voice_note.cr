# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A voice note message.
  # voice_note [Proton::Types::VoiceNote, nil] Message content; may be null.
  # is_pinned [::Bool] True, if the message is a pinned message with the specified content.
  class PushMessageContent::VoiceNote < Types::PushMessageContent
    property voice_note : Proton::Types::VoiceNote?
    property is_pinned : ::Bool

    def initialize(@is_pinned : ::Bool, @voice_note : Proton::Types::VoiceNote? = nil)
    end
  end
end

