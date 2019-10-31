# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A small image inside the text.
  # document [Proton::Types::Document] The image represented as a document.
  #   The image can be in GIF, JPEG or PNG format.
  # width [::Int32] Width of a bounding box in which the image should be shown; 0 if unknown.
  # height [::Int32] Height of a bounding box in which the image should be shown; 0 if unknown.
  class RichText::Icon < Types::RichText
    property document : Proton::Types::Document
    property width : ::Int32
    property height : ::Int32

    def initialize(@document : Proton::Types::Document, @width : ::Int32, @height : ::Int32)
    end
  end
end

