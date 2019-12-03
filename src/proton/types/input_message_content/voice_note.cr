# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A voice note message.
  class InputMessageContent::VoiceNote < Types::InputMessageContent
    include JSON::Serializable

    # Voice note to be sent
    property voice_note : Proton::Types::InputFile

    # Duration of the voice note, in seconds
    property duration : ::Int32

    # Waveform representation of the voice note, in 5-bit format
    property waveform : ::String

    # Voice note caption; 0-GetOption("message_caption_length_max") characters
    property caption : Proton::Types::FormattedText

    def initialize(@voice_note : Proton::Types::InputFile, @duration : ::Int32, @waveform : ::String, @caption : Proton::Types::FormattedText)
    end
  end
end
