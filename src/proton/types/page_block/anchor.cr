# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # An invisible anchor on a page, which can be used in a URL to open the page from the specified anchor.
  class PageBlock::Anchor < Types::PageBlock
    include JSON::Serializable

    # Name of the anchor
    property name : ::String

    def initialize(@name : ::String)
    end
  end
end
