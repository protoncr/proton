# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A photo.
  # photo [Proton::Types::Photo, nil] Photo file; may be null.
  # caption [Proton::Types::PageBlockCaption] Photo caption.
  # url [::String] URL that needs to be opened when the photo is clicked.
  class PageBlock::Photo < Types::PageBlock
    property photo : Proton::Types::Photo?
    property caption : Proton::Types::PageBlockCaption
    property url : ::String

    def initialize(@caption : Proton::Types::PageBlockCaption, @url : ::String, @photo : Proton::Types::Photo? = nil)
    end
  end
end

