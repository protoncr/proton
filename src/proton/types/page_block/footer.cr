# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The footer of a page.
  # footer [Proton::Types::RichText] Footer.
  class PageBlock::Footer < Types::PageBlock
    property footer : Proton::Types::RichText

    def initialize(@footer : Proton::Types::RichText)
    end
  end
end

