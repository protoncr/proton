# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A video note message.
  class InputMessageContent::VideoNote < Types::InputMessageContent
    include JSON::Serializable

    # Video note to be sent
    property video_note : Proton::Types::InputFile

    # Duration of the video, in seconds
    property duration : ::Int32

    # Video width and height; must be positive and not greater than 640
    property length : ::Int32

    # Video thumbnail, if available
    property thumbnail : Proton::Types::InputThumbnail? = nil

    def initialize(@video_note : Proton::Types::InputFile, @duration : ::Int32, @length : ::Int32, @thumbnail : Proton::Types::InputThumbnail? = nil)
    end
  end
end
