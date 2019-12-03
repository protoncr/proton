# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The author and publishing date of a page.
  class PageBlock::AuthorDate < Types::PageBlock
    include JSON::Serializable

    # Author
    property author : Proton::Types::RichText

    # Point in time (Unix timestamp) when the article was published; 0 if unknown
    property publish_date : ::Int32

    def initialize(@author : Proton::Types::RichText, @publish_date : ::Int32)
    end
  end
end
