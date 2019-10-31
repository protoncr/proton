# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents a point on the map.
  # id [::String] Unique identifier of the query result.
  # location [Proton::Types::Location] Location result.
  # title [::String] Title of the result.
  # thumbnail [Proton::Types::PhotoSize, nil] Result thumbnail; may be null.
  class InlineQueryResult::Location < Types::InlineQueryResult
    property id : ::String
    property location : Proton::Types::Location
    property title : ::String
    property thumbnail : Proton::Types::PhotoSize?

    def initialize(@id : ::String, @location : Proton::Types::Location, @title : ::String, @thumbnail : Proton::Types::PhotoSize? = nil)
    end
  end
end

