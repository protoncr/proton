# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes an audio file.
  # Audio is usually in MP3 format.
  # duration [::Int32] Duration of the audio, in seconds; as defined by the sender.
  # title [::String] Title of the audio; as defined by the sender.
  # performer [::String] Performer of the audio; as defined by the sender.
  # file_name [::String] Original name of the file; as defined by the sender.
  # mime_type [::String] The MIME type of the file; as defined by the sender.
  # album_cover_minithumbnail [Proton::Types::Minithumbnail, nil] The minithumbnail of the album cover; may be null.
  # album_cover_thumbnail [Proton::Types::PhotoSize, nil] The thumbnail of the album cover; as defined by the sender.
  #   The full size thumbnail should be extracted from the downloaded file; may be null.
  # audio [Proton::Types::File] File containing the audio.
  class Audio < Types::Base
    property duration : ::Int32
    property title : ::String
    property performer : ::String
    property file_name : ::String
    property mime_type : ::String
    property album_cover_minithumbnail : Proton::Types::Minithumbnail?
    property album_cover_thumbnail : Proton::Types::PhotoSize?
    property audio : Proton::Types::File

    def initialize(@duration : ::Int32, @title : ::String, @performer : ::String, @file_name : ::String, @mime_type : ::String, @audio : Proton::Types::File, @album_cover_minithumbnail : Proton::Types::Minithumbnail? = nil, @album_cover_thumbnail : Proton::Types::PhotoSize? = nil)
    end
  end
end

