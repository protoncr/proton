# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # An embedded post.
  class PageBlock::EmbeddedPost < Types::PageBlock
    include JSON::Serializable

    # Web page URL
    property url : ::String

    # Post author
    property author : ::String

    # Point in time (Unix timestamp) when the post was created; 0 if unknown
    property date : ::Int32

    # Post content
    property page_blocks : ::Array(Proton::Types::PageBlock)

    # Post caption
    property caption : Proton::Types::PageBlockCaption

    # Post author photo; may be null
    property author_photo : Proton::Types::Photo? = nil

    def initialize(@url : ::String, @author : ::String, @date : ::Int32, @page_blocks : ::Array(Proton::Types::PageBlock), @caption : Proton::Types::PageBlockCaption, @author_photo : Proton::Types::Photo? = nil)
    end
  end
end
