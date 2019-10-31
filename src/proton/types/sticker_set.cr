# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a sticker set.
  # id [::Int64] Identifier of the sticker set.
  # title [::String] Title of the sticker set.
  # name [::String] Name of the sticker set.
  # thumbnail [Proton::Types::PhotoSize, nil] Sticker set thumbnail in WEBP format with width and height 100; may be
  #   null.
  #   The file can be downloaded only before the thumbnail is changed.
  # is_installed [::Bool] True, if the sticker set has been installed by the current user.
  # is_archived [::Bool] True, if the sticker set has been archived.
  #   A sticker set can't be installed and archived simultaneously.
  # is_official [::Bool] True, if the sticker set is official.
  # is_animated [::Bool] True, is the stickers in the set are animated.
  # is_masks [::Bool] True, if the stickers in the set are masks.
  # is_viewed [::Bool] True for already viewed trending sticker sets.
  # stickers [::Array(Proton::Types::Sticker)] List of stickers in this set.
  # emojis [::Array(Proton::Types::Emojis)] A list of emoji corresponding to the stickers in the same order.
  #   The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the
  #   corresponding Sticker object.
  class StickerSet < Types::Base
    property id : ::Int64
    property title : ::String
    property name : ::String
    property thumbnail : Proton::Types::PhotoSize?
    property is_installed : ::Bool
    property is_archived : ::Bool
    property is_official : ::Bool
    property is_animated : ::Bool
    property is_masks : ::Bool
    property is_viewed : ::Bool
    property stickers : ::Array(Proton::Types::Sticker)
    property emojis : ::Array(Proton::Types::Emojis)

    def initialize(@id : ::Int64, @title : ::String, @name : ::String, @is_installed : ::Bool, @is_archived : ::Bool, @is_official : ::Bool, @is_animated : ::Bool, @is_masks : ::Bool, @is_viewed : ::Bool, @stickers : ::Array(Proton::Types::Sticker), @emojis : ::Array(Proton::Types::Emojis), @thumbnail : Proton::Types::PhotoSize? = nil)
    end
  end
end

