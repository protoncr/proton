# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The author and publishing date of a page.
  # author [Proton::Types::RichText] Author.
  # publish_date [::Int32] Point in time (Unix timestamp) when the article was published; 0 if unknown.
  class PageBlock::AuthorDate < Types::PageBlock
    property author : Proton::Types::RichText
    property publish_date : ::Int32

    def initialize(@author : Proton::Types::RichText, @publish_date : ::Int32)
    end
  end
end

