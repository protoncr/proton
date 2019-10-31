# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A preformatted text paragraph.
  # text [Proton::Types::RichText] Paragraph text.
  # language [::String] Programming language for which the text should be formatted.
  class PageBlock::Preformatted < Types::PageBlock
    property text : Proton::Types::RichText
    property language : ::String

    def initialize(@text : Proton::Types::RichText, @language : ::String)
    end
  end
end

