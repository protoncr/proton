# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # An animation message (GIF-style)..
  class InputMessageContent::Animation < Types::InputMessageContent
    include JSON::Serializable

    # Animation file to be sent
    property animation : Proton::Types::InputFile

    # Duration of the animation, in seconds
    property duration : ::Int32

    # Width of the animation; may be replaced by the server
    property width : ::Int32

    # Height of the animation; may be replaced by the server
    property height : ::Int32

    # Animation caption; 0-GetOption("message_caption_length_max") characters
    property caption : Proton::Types::FormattedText

    # Animation thumbnail, if available
    property thumbnail : Proton::Types::InputThumbnail? = nil

    def initialize(@animation : Proton::Types::InputFile, @duration : ::Int32, @width : ::Int32, @height : ::Int32, @caption : Proton::Types::FormattedText, @thumbnail : Proton::Types::InputThumbnail? = nil)
    end
  end
end
