# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A header.
  # header [Proton::Types::RichText] Header.
  class PageBlock::Header < Types::PageBlock
    property header : Proton::Types::RichText

    def initialize(@header : Proton::Types::RichText)
    end
  end
end

