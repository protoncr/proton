# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A collage.
  # page_blocks [::Array(Proton::Types::PageBlock)] Collage item contents.
  # caption [Proton::Types::PageBlockCaption] Block caption.
  class PageBlock::Collage < Types::PageBlock
    property page_blocks : ::Array(Proton::Types::PageBlock)
    property caption : Proton::Types::PageBlockCaption

    def initialize(@page_blocks : ::Array(Proton::Types::PageBlock), @caption : Proton::Types::PageBlockCaption)
    end
  end
end

