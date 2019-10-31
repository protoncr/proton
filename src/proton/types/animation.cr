# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes an animation file.
  # The animation must be encoded in GIF or MPEG4 format.
  # duration [::Int32] Duration of the animation, in seconds; as defined by the sender.
  # width [::Int32] Width of the animation.
  # height [::Int32] Height of the animation.
  # file_name [::String] Original name of the file; as defined by the sender.
  # mime_type [::String] MIME type of the file, usually "image/gif" or "video/mp4".
  # minithumbnail [Proton::Types::Minithumbnail, nil] Animation minithumbnail; may be null.
  # thumbnail [Proton::Types::PhotoSize, nil] Animation thumbnail; may be null.
  # animation [Proton::Types::File] File containing the animation.
  class Animation < Types::Base
    property duration : ::Int32
    property width : ::Int32
    property height : ::Int32
    property file_name : ::String
    property mime_type : ::String
    property minithumbnail : Proton::Types::Minithumbnail?
    property thumbnail : Proton::Types::PhotoSize?
    property animation : Proton::Types::File

    def initialize(@duration : ::Int32, @width : ::Int32, @height : ::Int32, @file_name : ::String, @mime_type : ::String, @animation : Proton::Types::File, @minithumbnail : Proton::Types::Minithumbnail? = nil, @thumbnail : Proton::Types::PhotoSize? = nil)
    end
  end
end

