# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a video file.
  # duration [::Int32] Duration of the video, in seconds; as defined by the sender.
  # width [::Int32] Video width; as defined by the sender.
  # height [::Int32] Video height; as defined by the sender.
  # file_name [::String] Original name of the file; as defined by the sender.
  # mime_type [::String] MIME type of the file; as defined by the sender.
  # has_stickers [::Bool] True, if stickers were added to the photo.
  # supports_streaming [::Bool] True, if the video should be tried to be streamed.
  # minithumbnail [Proton::Types::Minithumbnail, nil] Video minithumbnail; may be null.
  # thumbnail [Proton::Types::PhotoSize, nil] Video thumbnail; as defined by the sender; may be null.
  # video [Proton::Types::File] File containing the video.
  class Video < Types::Base
    property duration : ::Int32
    property width : ::Int32
    property height : ::Int32
    property file_name : ::String
    property mime_type : ::String
    property has_stickers : ::Bool
    property supports_streaming : ::Bool
    property minithumbnail : Proton::Types::Minithumbnail?
    property thumbnail : Proton::Types::PhotoSize?
    property video : Proton::Types::File

    def initialize(@duration : ::Int32, @width : ::Int32, @height : ::Int32, @file_name : ::String, @mime_type : ::String, @has_stickers : ::Bool, @supports_streaming : ::Bool, @video : Proton::Types::File, @minithumbnail : Proton::Types::Minithumbnail? = nil, @thumbnail : Proton::Types::PhotoSize? = nil)
    end
  end
end

