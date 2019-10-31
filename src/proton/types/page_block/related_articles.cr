# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Related articles.
  # header [Proton::Types::RichText] Block header.
  # articles [::Array(Proton::Types::PageBlockRelatedArticle)] List of related articles.
  class PageBlock::RelatedArticles < Types::PageBlock
    property header : Proton::Types::RichText
    property articles : ::Array(Proton::Types::PageBlockRelatedArticle)

    def initialize(@header : Proton::Types::RichText, @articles : ::Array(Proton::Types::PageBlockRelatedArticle))
    end
  end
end

