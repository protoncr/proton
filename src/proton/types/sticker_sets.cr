# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a list of sticker sets.
  class StickerSets < Types::Base
    include JSON::Serializable

    # Approximate total number of sticker sets found
    property total_count : ::Int32

    # List of sticker sets
    property sets : ::Array(Proton::Types::StickerSetInfo)

    def initialize(@total_count : ::Int32, @sets : ::Array(Proton::Types::StickerSetInfo))
    end
  end
end
