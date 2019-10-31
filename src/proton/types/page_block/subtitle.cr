# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The subtitle of a page.
  # subtitle [Proton::Types::RichText] Subtitle.
  class PageBlock::Subtitle < Types::PageBlock
    property subtitle : Proton::Types::RichText

    def initialize(@subtitle : Proton::Types::RichText)
    end
  end
end

