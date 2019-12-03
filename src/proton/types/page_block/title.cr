# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The title of a page.
  class PageBlock::Title < Types::PageBlock
    include JSON::Serializable

    # Title
    property title : Proton::Types::RichText

    def initialize(@title : Proton::Types::RichText)
    end
  end
end
