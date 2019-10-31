# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Photo description.
  # type [::String] Thumbnail type (see https://core.telegram.org/constructor/photoSize).
  # photo [Proton::Types::File] Information about the photo file.
  # width [::Int32] Photo width.
  # height [::Int32] Photo height.
  class PhotoSize < Types::Base
    property type : ::String
    property photo : Proton::Types::File
    property width : ::Int32
    property height : ::Int32

    def initialize(@type : ::String, @photo : Proton::Types::File, @width : ::Int32, @height : ::Int32)
    end
  end
end

