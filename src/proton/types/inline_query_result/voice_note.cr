# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents a voice note.
  # id [::String] Unique identifier of the query result.
  # voice_note [Proton::Types::VoiceNote] Voice note.
  # title [::String] Title of the voice note.
  class InlineQueryResult::VoiceNote < Types::InlineQueryResult
    property id : ::String
    property voice_note : Proton::Types::VoiceNote
    property title : ::String

    def initialize(@id : ::String, @voice_note : Proton::Types::VoiceNote, @title : ::String)
    end
  end
end

