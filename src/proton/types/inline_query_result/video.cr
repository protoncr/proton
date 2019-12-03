# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents a video.
  class InlineQueryResult::Video < Types::InlineQueryResult
    include JSON::Serializable

    # Unique identifier of the query result
    property id : ::String

    # Video
    property video : Proton::Types::Video

    # Title of the video
    property title : ::String

    # Description of the video
    property description : ::String

    def initialize(@id : ::String, @video : Proton::Types::Video, @title : ::String, @description : ::String)
    end
  end
end
