# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a voice note.
  # The voice note must be encoded with the Opus codec, and stored inside an OGG container.
  # Voice notes can have only a single audio channel.
  # duration [::Int32] Duration of the voice note, in seconds; as defined by the sender.
  # waveform [::String] A waveform representation of the voice note in 5-bit format.
  # mime_type [::String] MIME type of the file; as defined by the sender.
  # voice [Proton::Types::File] File containing the voice note.
  class VoiceNote < Types::Base
    property duration : ::Int32
    property waveform : ::String
    property mime_type : ::String
    property voice : Proton::Types::File

    def initialize(@duration : ::Int32, @waveform : ::String, @mime_type : ::String, @voice : Proton::Types::File)
    end
  end
end

