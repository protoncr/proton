# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a horizontal alignment of a table cell content.
  abstract class PageBlockHorizontalAlignment < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "pageBlockHorizontalAlignmentLeft" => Types::PageBlockHorizontalAlignment::Left,
      "pageBlockHorizontalAlignmentCenter" => Types::PageBlockHorizontalAlignment::Center,
      "pageBlockHorizontalAlignmentRight" => Types::PageBlockHorizontalAlignment::Right
    })
  end
end

require "./page_block_horizontal_alignment/left"
require "./page_block_horizontal_alignment/center"
require "./page_block_horizontal_alignment/right"
