# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A kicker.
  class PageBlock::Kicker < Types::PageBlock
    include JSON::Serializable

    # Kicker
    property kicker : Proton::Types::RichText

    def initialize(@kicker : Proton::Types::RichText)
    end
  end
end
