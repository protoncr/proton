# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # An audio message.
  # audio [Proton::Types::InputFile] Audio file to be sent.
  # album_cover_thumbnail [Proton::Types::InputThumbnail, nil] Thumbnail of the cover for the album, if available.
  # duration [::Int32] Duration of the audio, in seconds; may be replaced by the server.
  # title [::String] Title of the audio; 0-64 characters; may be replaced by the server.
  # performer [::String] Performer of the audio; 0-64 characters, may be replaced by the server.
  # caption [Proton::Types::FormattedText] Audio caption; 0-GetOption("message_caption_length_max") characters.
  class InputMessageContent::Audio < Types::InputMessageContent
    property audio : Proton::Types::InputFile
    property album_cover_thumbnail : Proton::Types::InputThumbnail?
    property duration : ::Int32
    property title : ::String
    property performer : ::String
    property caption : Proton::Types::FormattedText

    def initialize(@audio : Proton::Types::InputFile, @duration : ::Int32, @title : ::String, @performer : ::String, @caption : Proton::Types::FormattedText, @album_cover_thumbnail : Proton::Types::InputThumbnail? = nil)
    end
  end
end

