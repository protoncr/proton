# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # An audio message.
  class InputMessageContent::Audio < Types::InputMessageContent
    include JSON::Serializable

    # Audio file to be sent
    property audio : Proton::Types::InputFile

    # Duration of the audio, in seconds; may be replaced by the server
    property duration : ::Int32

    # Title of the audio; 0-64 characters; may be replaced by the server
    property title : ::String

    # Performer of the audio; 0-64 characters, may be replaced by the server
    property performer : ::String

    # Audio caption; 0-GetOption("message_caption_length_max") characters
    property caption : Proton::Types::FormattedText

    # Thumbnail of the cover for the album, if available
    property album_cover_thumbnail : Proton::Types::InputThumbnail? = nil

    def initialize(@audio : Proton::Types::InputFile, @duration : ::Int32, @title : ::String, @performer : ::String, @caption : Proton::Types::FormattedText, @album_cover_thumbnail : Proton::Types::InputThumbnail? = nil)
    end
  end
end
