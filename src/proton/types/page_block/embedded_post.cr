# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # An embedded post.
  # url [::String] Web page URL.
  # author [::String] Post author.
  # author_photo [Proton::Types::Photo, nil] Post author photo; may be null.
  # date [::Int32] Point in time (Unix timestamp) when the post was created; 0 if unknown.
  # page_blocks [::Array(Proton::Types::PageBlock)] Post content.
  # caption [Proton::Types::PageBlockCaption] Post caption.
  class PageBlock::EmbeddedPost < Types::PageBlock
    property url : ::String
    property author : ::String
    property author_photo : Proton::Types::Photo?
    property date : ::Int32
    property page_blocks : ::Array(Proton::Types::PageBlock)
    property caption : Proton::Types::PageBlockCaption

    def initialize(@url : ::String, @author : ::String, @date : ::Int32, @page_blocks : ::Array(Proton::Types::PageBlock), @caption : Proton::Types::PageBlockCaption, @author_photo : Proton::Types::Photo? = nil)
    end
  end
end

