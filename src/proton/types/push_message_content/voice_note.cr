# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A voice note message.
  class PushMessageContent::VoiceNote < Types::PushMessageContent
    include JSON::Serializable

    # True, if the message is a pinned message with the specified content
    property is_pinned : ::Bool

    # Message content; may be null
    property voice_note : Proton::Types::VoiceNote? = nil

    def initialize(@is_pinned : ::Bool, @voice_note : Proton::Types::VoiceNote? = nil)
    end
  end
end
