# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A collage.
  class PageBlock::Collage < Types::PageBlock
    include JSON::Serializable

    # Collage item contents
    property page_blocks : ::Array(Proton::Types::PageBlock)

    # Block caption
    property caption : Proton::Types::PageBlockCaption

    def initialize(@page_blocks : ::Array(Proton::Types::PageBlock), @caption : Proton::Types::PageBlockCaption)
    end
  end
end
