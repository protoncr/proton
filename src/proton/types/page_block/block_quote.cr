# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A block quote.
  class PageBlock::BlockQuote < Types::PageBlock
    include JSON::Serializable

    # Quote text
    property text : Proton::Types::RichText

    # Quote credit
    property credit : Proton::Types::RichText

    def initialize(@text : Proton::Types::RichText, @credit : Proton::Types::RichText)
    end
  end
end
