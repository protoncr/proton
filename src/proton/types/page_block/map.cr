# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A map.
  class PageBlock::Map < Types::PageBlock
    include JSON::Serializable

    # Location of the map center
    property location : Proton::Types::Location

    # Map zoom level
    property zoom : ::Int32

    # Map width
    property width : ::Int32

    # Map height
    property height : ::Int32

    # Block caption
    property caption : Proton::Types::PageBlockCaption

    def initialize(@location : Proton::Types::Location, @zoom : ::Int32, @width : ::Int32, @height : ::Int32, @caption : Proton::Types::PageBlockCaption)
    end
  end
end
