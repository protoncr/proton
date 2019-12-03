# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents an audio file.
  class InlineQueryResult::Audio < Types::InlineQueryResult
    include JSON::Serializable

    # Unique identifier of the query result
    property id : ::String

    # Audio file
    property audio : Proton::Types::Audio

    def initialize(@id : ::String, @audio : Proton::Types::Audio)
    end
  end
end
