# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents a photo.
  # id [::String] Unique identifier of the query result.
  # photo [Proton::Types::Photo] Photo.
  # title [::String] Title of the result, if known.
  # description [::String] A short description of the result, if known.
  class InlineQueryResult::Photo < Types::InlineQueryResult
    property id : ::String
    property photo : Proton::Types::Photo
    property title : ::String
    property description : ::String

    def initialize(@id : ::String, @photo : Proton::Types::Photo, @title : ::String, @description : ::String)
    end
  end
end

