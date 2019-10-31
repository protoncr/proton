# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents short information about a sticker set.
  # id [::Int64] Identifier of the sticker set.
  # title [::String] Title of the sticker set.
  # name [::String] Name of the sticker set.
  # thumbnail [Proton::Types::PhotoSize, nil] Sticker set thumbnail in WEBP format with width and height 100; may be
  #   null.
  # is_installed [::Bool] True, if the sticker set has been installed by current user.
  # is_archived [::Bool] True, if the sticker set has been archived.
  #   A sticker set can't be installed and archived simultaneously.
  # is_official [::Bool] True, if the sticker set is official.
  # is_animated [::Bool] True, is the stickers in the set are animated.
  # is_masks [::Bool] True, if the stickers in the set are masks.
  # is_viewed [::Bool] True for already viewed trending sticker sets.
  # size [::Int32] Total number of stickers in the set.
  # covers [::Array(Proton::Types::Sticker)] Contains up to the first 5 stickers from the set, depending on the
  #   context.
  #   If the client needs more stickers the full set should be requested.
  class StickerSetInfo < Types::Base
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
    property size : ::Int32
    property covers : ::Array(Proton::Types::Sticker)

    def initialize(@id : ::Int64, @title : ::String, @name : ::String, @is_installed : ::Bool, @is_archived : ::Bool, @is_official : ::Bool, @is_animated : ::Bool, @is_masks : ::Bool, @is_viewed : ::Bool, @size : ::Int32, @covers : ::Array(Proton::Types::Sticker), @thumbnail : Proton::Types::PhotoSize? = nil)
    end
  end
end

