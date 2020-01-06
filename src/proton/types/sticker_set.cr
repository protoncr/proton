# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a sticker set.
  class StickerSet < Types::Base
    include JSON::Serializable

    # Identifier of the sticker set
    property id : ::String

    # Title of the sticker set
    property title : ::String

    # Name of the sticker set
    property name : ::String

    # List of stickers in this set
    property stickers : ::Array(Proton::Types::Sticker)

    # A list of emoji corresponding to the stickers in the same order. The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the corresponding Sticker object
    property emojis : ::Array(Proton::Types::Emojis)

    # Sticker set thumbnail in WEBP format with width and height 100; may be null. The file can be downloaded only before the thumbnail is changed
    property thumbnail : Proton::Types::PhotoSize? = nil

    # True, if the sticker set has been installed by the current user
    property is_installed : ::Bool = false

    # True, if the sticker set has been archived. A sticker set can't be installed and archived simultaneously
    property is_archived : ::Bool = false

    # True, if the sticker set is official
    property is_official : ::Bool = false

    # True, is the stickers in the set are animated
    property is_animated : ::Bool = false

    # True, if the stickers in the set are masks
    property is_masks : ::Bool = false

    # True for already viewed trending sticker sets
    property is_viewed : ::Bool = false

    def initialize(@id : ::String, @title : ::String, @name : ::String, @stickers : ::Array(Proton::Types::Sticker), @emojis : ::Array(Proton::Types::Emojis), @thumbnail : Proton::Types::PhotoSize? = nil, @is_installed : ::Bool = false, @is_archived : ::Bool = false, @is_official : ::Bool = false, @is_animated : ::Bool = false, @is_masks : ::Bool = false, @is_viewed : ::Bool = false)
    end
  end
end
