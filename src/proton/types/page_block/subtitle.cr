# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The subtitle of a page.
  class PageBlock::Subtitle < Types::PageBlock
    include JSON::Serializable

    # Subtitle
    property subtitle : Proton::Types::RichText

    def initialize(@subtitle : Proton::Types::RichText)
    end
  end
end
