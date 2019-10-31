# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A video note message.
  # video_note [Proton::Types::InputFile] Video note to be sent.
  # thumbnail [Proton::Types::InputThumbnail, nil] Video thumbnail, if available.
  # duration [::Int32] Duration of the video, in seconds.
  # length [::Int32] Video width and height; must be positive and not greater than 640.
  class InputMessageContent::VideoNote < Types::InputMessageContent
    property video_note : Proton::Types::InputFile
    property thumbnail : Proton::Types::InputThumbnail?
    property duration : ::Int32
    property length : ::Int32

    def initialize(@video_note : Proton::Types::InputFile, @duration : ::Int32, @length : ::Int32, @thumbnail : Proton::Types::InputThumbnail? = nil)
    end
  end
end

