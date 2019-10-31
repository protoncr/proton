# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents an audio file.
  # id [::String] Unique identifier of the query result.
  # audio [Proton::Types::Audio] Audio file.
  class InlineQueryResult::Audio < Types::InlineQueryResult
    property id : ::String
    property audio : Proton::Types::Audio

    def initialize(@id : ::String, @audio : Proton::Types::Audio)
    end
  end
end

