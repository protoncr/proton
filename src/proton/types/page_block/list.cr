# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A list of data blocks.
  class PageBlock::List < Types::PageBlock
    include JSON::Serializable

    # The items of the list
    property items : ::Array(Proton::Types::PageBlockListItem)

    def initialize(@items : ::Array(Proton::Types::PageBlockListItem))
    end
  end
end
