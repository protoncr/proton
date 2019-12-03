# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The list of trending sticker sets was updated or some of them were viewed.
  class Update::TrendingStickerSets < Types::Update
    include JSON::Serializable

    # The new list of trending sticker sets
    property sticker_sets : Proton::Types::StickerSets

    def initialize(@sticker_sets : Proton::Types::StickerSets)
    end
  end
end
