# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # An embedded web page.
  # url [::String, nil] Web page URL, if available.
  # html [::String] HTML-markup of the embedded page.
  # poster_photo [Proton::Types::Photo, nil] Poster photo, if available; may be null.
  # width [::Int32] Block width; 0 if unknown.
  # height [::Int32] Block height; 0 if unknown.
  # caption [Proton::Types::PageBlockCaption] Block caption.
  # is_full_width [::Bool] True, if the block should be full width.
  # allow_scrolling [::Bool] True, if scrolling should be allowed.
  class PageBlock::Embedded < Types::PageBlock
    property url : ::String?
    property html : ::String
    property poster_photo : Proton::Types::Photo?
    property width : ::Int32
    property height : ::Int32
    property caption : Proton::Types::PageBlockCaption
    property is_full_width : ::Bool
    property allow_scrolling : ::Bool

    def initialize(@html : ::String, @width : ::Int32, @height : ::Int32, @caption : Proton::Types::PageBlockCaption, @is_full_width : ::Bool, @allow_scrolling : ::Bool, @url : ::String? = nil, @poster_photo : Proton::Types::Photo? = nil)
    end
  end
end

