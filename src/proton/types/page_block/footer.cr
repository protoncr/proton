# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The footer of a page.
  class PageBlock::Footer < Types::PageBlock
    include JSON::Serializable

    # Footer
    property footer : Proton::Types::RichText

    def initialize(@footer : Proton::Types::RichText)
    end
  end
end
