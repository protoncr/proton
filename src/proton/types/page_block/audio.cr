# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # An audio file.
  # audio [Proton::Types::Audio, nil] Audio file; may be null.
  # caption [Proton::Types::PageBlockCaption] Audio file caption.
  class PageBlock::Audio < Types::PageBlock
    property audio : Proton::Types::Audio?
    property caption : Proton::Types::PageBlockCaption

    def initialize(@caption : Proton::Types::PageBlockCaption, @audio : Proton::Types::Audio? = nil)
    end
  end
end

