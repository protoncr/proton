# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes an animation file.
  # The animation must be encoded in GIF or MPEG4 format.
  class Animation < Types::Base
    include JSON::Serializable

    # Duration of the animation, in seconds; as defined by the sender
    property duration : ::Int32

    # Width of the animation
    property width : ::Int32

    # Height of the animation
    property height : ::Int32

    # Original name of the file; as defined by the sender
    property file_name : ::String

    # MIME type of the file, usually "image/gif" or "video/mp4"
    property mime_type : ::String

    # File containing the animation
    property animation : Proton::Types::File

    # Animation minithumbnail; may be null
    property minithumbnail : Proton::Types::Minithumbnail? = nil

    # Animation thumbnail; may be null
    property thumbnail : Proton::Types::PhotoSize? = nil

    def initialize(@duration : ::Int32, @width : ::Int32, @height : ::Int32, @file_name : ::String, @mime_type : ::String, @animation : Proton::Types::File, @minithumbnail : Proton::Types::Minithumbnail? = nil, @thumbnail : Proton::Types::PhotoSize? = nil)
    end
  end
end
