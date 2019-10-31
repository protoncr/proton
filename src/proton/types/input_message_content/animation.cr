# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # An animation message (GIF-style)..
  # animation [Proton::Types::InputFile] Animation file to be sent.
  # thumbnail [Proton::Types::InputThumbnail, nil] Animation thumbnail, if available.
  # duration [::Int32] Duration of the animation, in seconds.
  # width [::Int32] Width of the animation; may be replaced by the server.
  # height [::Int32] Height of the animation; may be replaced by the server.
  # caption [Proton::Types::FormattedText] Animation caption; 0-GetOption("message_caption_length_max") characters.
  class InputMessageContent::Animation < Types::InputMessageContent
    property animation : Proton::Types::InputFile
    property thumbnail : Proton::Types::InputThumbnail?
    property duration : ::Int32
    property width : ::Int32
    property height : ::Int32
    property caption : Proton::Types::FormattedText

    def initialize(@animation : Proton::Types::InputFile, @duration : ::Int32, @width : ::Int32, @height : ::Int32, @caption : Proton::Types::FormattedText, @thumbnail : Proton::Types::InputThumbnail? = nil)
    end
  end
end

