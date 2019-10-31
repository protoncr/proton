# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A kicker.
  # kicker [Proton::Types::RichText] Kicker.
  class PageBlock::Kicker < Types::PageBlock
    property kicker : Proton::Types::RichText

    def initialize(@kicker : Proton::Types::RichText)
    end
  end
end

