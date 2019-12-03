# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # An embedded web page.
  class PageBlock::Embedded < Types::PageBlock
    include JSON::Serializable

    # HTML-markup of the embedded page
    property html : ::String

    # Block width; 0 if unknown
    property width : ::Int32

    # Block height; 0 if unknown
    property height : ::Int32

    # Block caption
    property caption : Proton::Types::PageBlockCaption

    # True, if the block should be full width
    property is_full_width : ::Bool

    # True, if scrolling should be allowed
    property allow_scrolling : ::Bool

    # Web page URL, if available
    property url : ::String? = nil

    # Poster photo, if available; may be null
    property poster_photo : Proton::Types::Photo? = nil

    def initialize(@html : ::String, @width : ::Int32, @height : ::Int32, @caption : Proton::Types::PageBlockCaption, @is_full_width : ::Bool, @allow_scrolling : ::Bool, @url : ::String? = nil, @poster_photo : Proton::Types::Photo? = nil)
    end
  end
end
