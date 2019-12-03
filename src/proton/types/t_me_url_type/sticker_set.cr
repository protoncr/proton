# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A URL linking to a sticker set.
  class TMeUrlType::StickerSet < Types::TMeUrlType
    include JSON::Serializable

    # Identifier of the sticker set
    property sticker_set_id : ::String

    def initialize(@sticker_set_id : ::String)
    end
  end
end
