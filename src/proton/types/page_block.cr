# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a block of an instant view web page.
  abstract class PageBlock < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "pageBlockTitle" => Types::PageBlock::Title,
      "pageBlockSubtitle" => Types::PageBlock::Subtitle,
      "pageBlockAuthorDate" => Types::PageBlock::AuthorDate,
      "pageBlockHeader" => Types::PageBlock::Header,
      "pageBlockSubheader" => Types::PageBlock::Subheader,
      "pageBlockKicker" => Types::PageBlock::Kicker,
      "pageBlockParagraph" => Types::PageBlock::Paragraph,
      "pageBlockPreformatted" => Types::PageBlock::Preformatted,
      "pageBlockFooter" => Types::PageBlock::Footer,
      "pageBlockDivider" => Types::PageBlock::Divider,
      "pageBlockAnchor" => Types::PageBlock::Anchor,
      "pageBlockList" => Types::PageBlock::List,
      "pageBlockBlockQuote" => Types::PageBlock::BlockQuote,
      "pageBlockPullQuote" => Types::PageBlock::PullQuote,
      "pageBlockAnimation" => Types::PageBlock::Animation,
      "pageBlockAudio" => Types::PageBlock::Audio,
      "pageBlockPhoto" => Types::PageBlock::Photo,
      "pageBlockVideo" => Types::PageBlock::Video,
      "pageBlockCover" => Types::PageBlock::Cover,
      "pageBlockEmbedded" => Types::PageBlock::Embedded,
      "pageBlockEmbeddedPost" => Types::PageBlock::EmbeddedPost,
      "pageBlockCollage" => Types::PageBlock::Collage,
      "pageBlockSlideshow" => Types::PageBlock::Slideshow,
      "pageBlockChatLink" => Types::PageBlock::ChatLink,
      "pageBlockTable" => Types::PageBlock::Table,
      "pageBlockDetails" => Types::PageBlock::Details,
      "pageBlockRelatedArticles" => Types::PageBlock::RelatedArticles,
      "pageBlockMap" => Types::PageBlock::Map
    })
  end
end

require "./page_block/title"
require "./page_block/subtitle"
require "./page_block/author_date"
require "./page_block/header"
require "./page_block/subheader"
require "./page_block/kicker"
require "./page_block/paragraph"
require "./page_block/preformatted"
require "./page_block/footer"
require "./page_block/divider"
require "./page_block/anchor"
require "./page_block/list"
require "./page_block/block_quote"
require "./page_block/pull_quote"
require "./page_block/animation"
require "./page_block/audio"
require "./page_block/photo"
require "./page_block/video"
require "./page_block/cover"
require "./page_block/embedded"
require "./page_block/embedded_post"
require "./page_block/collage"
require "./page_block/slideshow"
require "./page_block/chat_link"
require "./page_block/table"
require "./page_block/details"
require "./page_block/related_articles"
require "./page_block/map"
