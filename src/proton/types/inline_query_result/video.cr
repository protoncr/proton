# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents a video.
  # id [::String] Unique identifier of the query result.
  # video [Proton::Types::Video] Video.
  # title [::String] Title of the video.
  # description [::String] Description of the video.
  class InlineQueryResult::Video < Types::InlineQueryResult
    property id : ::String
    property video : Proton::Types::Video
    property title : ::String
    property description : ::String

    def initialize(@id : ::String, @video : Proton::Types::Video, @title : ::String, @description : ::String)
    end
  end
end

