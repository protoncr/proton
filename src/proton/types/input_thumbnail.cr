# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # A thumbnail to be sent along with a file; should be in JPEG or WEBP format for stickers, and less than 200 kB in
  #   size.
  # thumbnail [Proton::Types::InputFile] Thumbnail file to send.
  #   Sending thumbnails by file_id is currently not supported.
  # width [::Int32] Thumbnail width, usually shouldn't exceed 320.
  #   Use 0 if unknown.
  # height [::Int32] Thumbnail height, usually shouldn't exceed 320.
  #   Use 0 if unknown.
  class InputThumbnail < Types::Base
    property thumbnail : Proton::Types::InputFile
    property width : ::Int32
    property height : ::Int32

    def initialize(@thumbnail : Proton::Types::InputFile, @width : ::Int32, @height : ::Int32)
    end
  end
end

