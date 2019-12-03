# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A subheader.
  class PageBlock::Subheader < Types::PageBlock
    include JSON::Serializable

    # Subheader
    property subheader : Proton::Types::RichText

    def initialize(@subheader : Proton::Types::RichText)
    end
  end
end
