# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes an item of a list page block.
  # label [::String] Item label.
  # page_blocks [::Array(Proton::Types::PageBlock)] Item blocks.
  class PageBlockListItem < Types::Base
    property label : ::String
    property page_blocks : ::Array(Proton::Types::PageBlock)

    def initialize(@label : ::String, @page_blocks : ::Array(Proton::Types::PageBlock))
    end
  end
end

