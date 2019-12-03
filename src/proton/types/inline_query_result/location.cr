# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents a point on the map.
  class InlineQueryResult::Location < Types::InlineQueryResult
    include JSON::Serializable

    # Unique identifier of the query result
    property id : ::String

    # Location result
    property location : Proton::Types::Location

    # Title of the result
    property title : ::String

    # Result thumbnail; may be null
    property thumbnail : Proton::Types::PhotoSize? = nil

    def initialize(@id : ::String, @location : Proton::Types::Location, @title : ::String, @thumbnail : Proton::Types::PhotoSize? = nil)
    end
  end
end
