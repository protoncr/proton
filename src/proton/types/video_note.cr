# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a video note.
  # The video must be equal in width and height, cropped to a circle, and stored in MPEG4 format.
  # duration [::Int32] Duration of the video, in seconds; as defined by the sender.
  # length [::Int32] Video width and height; as defined by the sender.
  # minithumbnail [Proton::Types::Minithumbnail, nil] Video minithumbnail; may be null.
  # thumbnail [Proton::Types::PhotoSize, nil] Video thumbnail; as defined by the sender; may be null.
  # video [Proton::Types::File] File containing the video.
  class VideoNote < Types::Base
    property duration : ::Int32
    property length : ::Int32
    property minithumbnail : Proton::Types::Minithumbnail?
    property thumbnail : Proton::Types::PhotoSize?
    property video : Proton::Types::File

    def initialize(@duration : ::Int32, @length : ::Int32, @video : Proton::Types::File, @minithumbnail : Proton::Types::Minithumbnail? = nil, @thumbnail : Proton::Types::PhotoSize? = nil)
    end
  end
end

