# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A preformatted text paragraph.
  class PageBlock::Preformatted < Types::PageBlock
    include JSON::Serializable

    # Paragraph text
    property text : Proton::Types::RichText

    # Programming language for which the text should be formatted
    property language : ::String

    def initialize(@text : Proton::Types::RichText, @language : ::String)
    end
  end
end
