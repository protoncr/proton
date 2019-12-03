# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes an audio file.
  # Audio is usually in MP3 format.
  class Audio < Types::Base
    include JSON::Serializable

    # Duration of the audio, in seconds; as defined by the sender
    property duration : ::Int32

    # Title of the audio; as defined by the sender
    property title : ::String

    # Performer of the audio; as defined by the sender
    property performer : ::String

    # Original name of the file; as defined by the sender
    property file_name : ::String

    # The MIME type of the file; as defined by the sender
    property mime_type : ::String

    # File containing the audio
    property audio : Proton::Types::File

    # The minithumbnail of the album cover; may be null
    property album_cover_minithumbnail : Proton::Types::Minithumbnail? = nil

    # The thumbnail of the album cover; as defined by the sender. The full size thumbnail should be extracted from the downloaded file; may be null
    property album_cover_thumbnail : Proton::Types::PhotoSize? = nil

    def initialize(@duration : ::Int32, @title : ::String, @performer : ::String, @file_name : ::String, @mime_type : ::String, @audio : Proton::Types::File, @album_cover_minithumbnail : Proton::Types::Minithumbnail? = nil, @album_cover_thumbnail : Proton::Types::PhotoSize? = nil)
    end
  end
end
