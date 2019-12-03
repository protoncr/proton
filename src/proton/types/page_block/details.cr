# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A collapsible block.
  class PageBlock::Details < Types::PageBlock
    include JSON::Serializable

    # Always visible heading for the block
    property header : Proton::Types::RichText

    # Block contents
    property page_blocks : ::Array(Proton::Types::PageBlock)

    # True, if the block is open by default
    property is_open : ::Bool

    def initialize(@header : Proton::Types::RichText, @page_blocks : ::Array(Proton::Types::PageBlock), @is_open : ::Bool)
    end
  end
end
