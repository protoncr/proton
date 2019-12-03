# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a Vertical alignment of a table cell content.
  abstract class PageBlockVerticalAlignment < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "pageBlockVerticalAlignmentTop" => Types::PageBlockVerticalAlignment::Top,
      "pageBlockVerticalAlignmentMiddle" => Types::PageBlockVerticalAlignment::Middle,
      "pageBlockVerticalAlignmentBottom" => Types::PageBlockVerticalAlignment::Bottom
    })
  end
end

require "./page_block_vertical_alignment/top"
require "./page_block_vertical_alignment/middle"
require "./page_block_vertical_alignment/bottom"
