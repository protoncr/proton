# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a list of sticker sets.
  # total_count [::Int32] Approximate total number of sticker sets found.
  # sets [::Array(Proton::Types::StickerSetInfo)] List of sticker sets.
  class StickerSets < Types::Base
    property total_count : ::Int32
    property sets : ::Array(Proton::Types::StickerSetInfo)

    def initialize(@total_count : ::Int32, @sets : ::Array(Proton::Types::StickerSetInfo))
    end
  end
end

