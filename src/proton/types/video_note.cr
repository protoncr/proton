# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a video note.
  # The video must be equal in width and height, cropped to a circle, and stored in MPEG4 format.
  class VideoNote < Types::Base
    include JSON::Serializable

    # Duration of the video, in seconds; as defined by the sender
    property duration : ::Int32

    # Video width and height; as defined by the sender
    property length : ::Int32

    # File containing the video
    property video : Proton::Types::File

    # Video minithumbnail; may be null
    property minithumbnail : Proton::Types::Minithumbnail? = nil

    # Video thumbnail; as defined by the sender; may be null
    property thumbnail : Proton::Types::PhotoSize? = nil

    def initialize(@duration : ::Int32, @length : ::Int32, @video : Proton::Types::File, @minithumbnail : Proton::Types::Minithumbnail? = nil, @thumbnail : Proton::Types::PhotoSize? = nil)
    end
  end
end
