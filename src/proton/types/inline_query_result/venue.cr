# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents information about a venue.
  class InlineQueryResult::Venue < Types::InlineQueryResult
    include JSON::Serializable

    # Unique identifier of the query result
    property id : ::String

    # Venue result
    property venue : Proton::Types::Venue

    # Result thumbnail; may be null
    property thumbnail : Proton::Types::PhotoSize? = nil

    def initialize(@id : ::String, @venue : Proton::Types::Venue, @thumbnail : Proton::Types::PhotoSize? = nil)
    end
  end
end
