# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a sticker that should be added to a sticker set.
  class InputSticker < Types::Base
    include JSON::Serializable

    # PNG image with the sticker; must be up to 512 kB in size and fit in a 512x512 square
    property png_sticker : Proton::Types::InputFile

    # Emoji corresponding to the sticker
    property emojis : ::String

    # For masks, position where the mask should be placed; may be null
    property mask_position : Proton::Types::MaskPosition? = nil

    def initialize(@png_sticker : Proton::Types::InputFile, @emojis : ::String, @mask_position : Proton::Types::MaskPosition? = nil)
    end
  end
end
