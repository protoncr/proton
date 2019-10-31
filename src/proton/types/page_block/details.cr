# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A collapsible block.
  # header [Proton::Types::RichText] Always visible heading for the block.
  # page_blocks [::Array(Proton::Types::PageBlock)] Block contents.
  # is_open [::Bool] True, if the block is open by default.
  class PageBlock::Details < Types::PageBlock
    property header : Proton::Types::RichText
    property page_blocks : ::Array(Proton::Types::PageBlock)
    property is_open : ::Bool

    def initialize(@header : Proton::Types::RichText, @page_blocks : ::Array(Proton::Types::PageBlock), @is_open : ::Bool)
    end
  end
end

