# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A voice note message.
  class MessageContent::VoiceNote < Types::MessageContent
    include JSON::Serializable

    # Message content
    property voice_note : Proton::Types::VoiceNote

    # Voice note caption
    property caption : Proton::Types::FormattedText

    # True, if at least one of the recipients has listened to the voice note
    property is_listened : ::Bool

    def initialize(@voice_note : Proton::Types::VoiceNote, @caption : Proton::Types::FormattedText, @is_listened : ::Bool)
    end
  end
end
