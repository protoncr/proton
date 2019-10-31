# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A voice note message.
  # voice_note [Proton::Types::VoiceNote] Message content.
  # caption [Proton::Types::FormattedText] Voice note caption.
  # is_listened [::Bool] True, if at least one of the recipients has listened to the voice note.
  class MessageContent::VoiceNote < Types::MessageContent
    property voice_note : Proton::Types::VoiceNote
    property caption : Proton::Types::FormattedText
    property is_listened : ::Bool

    def initialize(@voice_note : Proton::Types::VoiceNote, @caption : Proton::Types::FormattedText, @is_listened : ::Bool)
    end
  end
end

