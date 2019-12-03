# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Related articles.
  class PageBlock::RelatedArticles < Types::PageBlock
    include JSON::Serializable

    # Block header
    property header : Proton::Types::RichText

    # List of related articles
    property articles : ::Array(Proton::Types::PageBlockRelatedArticle)

    def initialize(@header : Proton::Types::RichText, @articles : ::Array(Proton::Types::PageBlockRelatedArticle))
    end
  end
end
