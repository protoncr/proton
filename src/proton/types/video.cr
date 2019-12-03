# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a video file.
  class Video < Types::Base
    include JSON::Serializable

    # Duration of the video, in seconds; as defined by the sender
    property duration : ::Int32

    # Video width; as defined by the sender
    property width : ::Int32

    # Video height; as defined by the sender
    property height : ::Int32

    # Original name of the file; as defined by the sender
    property file_name : ::String

    # MIME type of the file; as defined by the sender
    property mime_type : ::String

    # True, if stickers were added to the photo
    property has_stickers : ::Bool

    # True, if the video should be tried to be streamed
    property supports_streaming : ::Bool

    # File containing the video
    property video : Proton::Types::File

    # Video minithumbnail; may be null
    property minithumbnail : Proton::Types::Minithumbnail? = nil

    # Video thumbnail; as defined by the sender; may be null
    property thumbnail : Proton::Types::PhotoSize? = nil

    def initialize(@duration : ::Int32, @width : ::Int32, @height : ::Int32, @file_name : ::String, @mime_type : ::String, @has_stickers : ::Bool, @supports_streaming : ::Bool, @video : Proton::Types::File, @minithumbnail : Proton::Types::Minithumbnail? = nil, @thumbnail : Proton::Types::PhotoSize? = nil)
    end
  end
end
