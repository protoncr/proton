# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A voice note message.
  class PushMessageContent::VoiceNote < Types::PushMessageContent
    include JSON::Serializable

    # Message content; may be null
    property voice_note : Proton::Types::VoiceNote? = nil

    # True, if the message is a pinned message with the specified content
    property is_pinned : ::Bool = false

    def initialize(@voice_note : Proton::Types::VoiceNote? = nil, @is_pinned : ::Bool = false)
    end
  end
end
