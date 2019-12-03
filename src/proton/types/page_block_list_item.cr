# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes an item of a list page block.
  class PageBlockListItem < Types::Base
    include JSON::Serializable

    # Item label
    property label : ::String

    # Item blocks
    property page_blocks : ::Array(Proton::Types::PageBlock)

    def initialize(@label : ::String, @page_blocks : ::Array(Proton::Types::PageBlock))
    end
  end
end
