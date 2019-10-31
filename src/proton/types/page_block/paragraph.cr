# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A text paragraph.
  # text [Proton::Types::RichText] Paragraph text.
  class PageBlock::Paragraph < Types::PageBlock
    property text : Proton::Types::RichText

    def initialize(@text : Proton::Types::RichText)
    end
  end
end

