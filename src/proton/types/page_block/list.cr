# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A list of data blocks.
  # items [::Array(Proton::Types::PageBlockListItem)] The items of the list.
  class PageBlock::List < Types::PageBlock
    property items : ::Array(Proton::Types::PageBlockListItem)

    def initialize(@items : ::Array(Proton::Types::PageBlockListItem))
    end
  end
end

