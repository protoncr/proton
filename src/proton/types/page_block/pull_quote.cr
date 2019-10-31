# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A pull quote.
  # text [Proton::Types::RichText] Quote text.
  # credit [Proton::Types::RichText] Quote credit.
  class PageBlock::PullQuote < Types::PageBlock
    property text : Proton::Types::RichText
    property credit : Proton::Types::RichText

    def initialize(@text : Proton::Types::RichText, @credit : Proton::Types::RichText)
    end
  end
end

