# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The title of a page.
  # title [Proton::Types::RichText] Title.
  class PageBlock::Title < Types::PageBlock
    property title : Proton::Types::RichText

    def initialize(@title : Proton::Types::RichText)
    end
  end
end

