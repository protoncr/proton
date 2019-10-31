# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # An invisible anchor on a page, which can be used in a URL to open the page from the specified anchor.
  # name [::String] Name of the anchor.
  class PageBlock::Anchor < Types::PageBlock
    property name : ::String

    def initialize(@name : ::String)
    end
  end
end

