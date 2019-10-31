# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents information about a venue.
  # id [::String] Unique identifier of the query result.
  # venue [Proton::Types::Venue] Venue result.
  # thumbnail [Proton::Types::PhotoSize, nil] Result thumbnail; may be null.
  class InlineQueryResult::Venue < Types::InlineQueryResult
    property id : ::String
    property venue : Proton::Types::Venue
    property thumbnail : Proton::Types::PhotoSize?

    def initialize(@id : ::String, @venue : Proton::Types::Venue, @thumbnail : Proton::Types::PhotoSize? = nil)
    end
  end
end

