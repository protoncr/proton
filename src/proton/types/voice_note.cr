# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a voice note.
  # The voice note must be encoded with the Opus codec, and stored inside an OGG container.
  # Voice notes can have only a single audio channel.
  class VoiceNote < Types::Base
    include JSON::Serializable

    # Duration of the voice note, in seconds; as defined by the sender
    property duration : ::Int32

    # A waveform representation of the voice note in 5-bit format
    property waveform : ::String

    # MIME type of the file; as defined by the sender
    property mime_type : ::String

    # File containing the voice note
    property voice : Proton::Types::File

    def initialize(@duration : ::Int32, @waveform : ::String, @mime_type : ::String, @voice : Proton::Types::File)
    end
  end
end
