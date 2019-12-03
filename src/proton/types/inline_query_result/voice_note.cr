# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents a voice note.
  class InlineQueryResult::VoiceNote < Types::InlineQueryResult
    include JSON::Serializable

    # Unique identifier of the query result
    property id : ::String

    # Voice note
    property voice_note : Proton::Types::VoiceNote

    # Title of the voice note
    property title : ::String

    def initialize(@id : ::String, @voice_note : Proton::Types::VoiceNote, @title : ::String)
    end
  end
end
