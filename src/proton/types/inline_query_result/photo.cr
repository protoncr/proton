# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents a photo.
  class InlineQueryResult::Photo < Types::InlineQueryResult
    include JSON::Serializable

    # Unique identifier of the query result
    property id : ::String

    # Photo
    property photo : Proton::Types::Photo

    # Title of the result, if known
    property title : ::String

    # A short description of the result, if known
    property description : ::String

    def initialize(@id : ::String, @photo : Proton::Types::Photo, @title : ::String, @description : ::String)
    end
  end
end
