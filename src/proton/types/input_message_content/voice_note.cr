# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A voice note message.
  # voice_note [Proton::Types::InputFile] Voice note to be sent.
  # duration [::Int32] Duration of the voice note, in seconds.
  # waveform [::String] Waveform representation of the voice note, in 5-bit format.
  # caption [Proton::Types::FormattedText] Voice note caption; 0-GetOption("message_caption_length_max") characters.
  class InputMessageContent::VoiceNote < Types::InputMessageContent
    property voice_note : Proton::Types::InputFile
    property duration : ::Int32
    property waveform : ::String
    property caption : Proton::Types::FormattedText

    def initialize(@voice_note : Proton::Types::InputFile, @duration : ::Int32, @waveform : ::String, @caption : Proton::Types::FormattedText)
    end
  end
end

