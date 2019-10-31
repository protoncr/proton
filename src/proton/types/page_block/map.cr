# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A map.
  # location [Proton::Types::Location] Location of the map center.
  # zoom [::Int32] Map zoom level.
  # width [::Int32] Map width.
  # height [::Int32] Map height.
  # caption [Proton::Types::PageBlockCaption] Block caption.
  class PageBlock::Map < Types::PageBlock
    property location : Proton::Types::Location
    property zoom : ::Int32
    property width : ::Int32
    property height : ::Int32
    property caption : Proton::Types::PageBlockCaption

    def initialize(@location : Proton::Types::Location, @zoom : ::Int32, @width : ::Int32, @height : ::Int32, @caption : Proton::Types::PageBlockCaption)
    end
  end
end

