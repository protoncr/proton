# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # An audio file.
  class PageBlock::Audio < Types::PageBlock
    include JSON::Serializable

    # Audio file caption
    property caption : Proton::Types::PageBlockCaption

    # Audio file; may be null
    property audio : Proton::Types::Audio? = nil

    def initialize(@caption : Proton::Types::PageBlockCaption, @audio : Proton::Types::Audio? = nil)
    end
  end
end
