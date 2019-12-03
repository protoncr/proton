# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A page cover.
  class PageBlock::Cover < Types::PageBlock
    include JSON::Serializable

    # Cover
    property cover : Proton::Types::PageBlock

    def initialize(@cover : Proton::Types::PageBlock)
    end
  end
end
