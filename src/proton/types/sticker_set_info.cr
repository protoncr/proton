# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents short information about a sticker set.
  class StickerSetInfo < Types::Base
    include JSON::Serializable

    # Identifier of the sticker set
    property id : ::Int64

    # Title of the sticker set
    property title : ::String

    # Name of the sticker set
    property name : ::String

    # True, if the sticker set has been installed by current user
    property is_installed : ::Bool

    # True, if the sticker set has been archived. A sticker set can't be installed and archived simultaneously
    property is_archived : ::Bool

    # True, if the sticker set is official
    property is_official : ::Bool

    # True, is the stickers in the set are animated
    property is_animated : ::Bool

    # True, if the stickers in the set are masks
    property is_masks : ::Bool

    # True for already viewed trending sticker sets
    property is_viewed : ::Bool

    # Total number of stickers in the set
    property size : ::Int32

    # Contains up to the first 5 stickers from the set, depending on the context. If the client needs more stickers the full set should be requested
    property covers : ::Array(Proton::Types::Sticker)

    # Sticker set thumbnail in WEBP format with width and height 100; may be null
    property thumbnail : Proton::Types::PhotoSize? = nil

    def initialize(@id : ::Int64, @title : ::String, @name : ::String, @is_installed : ::Bool, @is_archived : ::Bool, @is_official : ::Bool, @is_animated : ::Bool, @is_masks : ::Bool, @is_viewed : ::Bool, @size : ::Int32, @covers : ::Array(Proton::Types::Sticker), @thumbnail : Proton::Types::PhotoSize? = nil)
    end
  end
end
