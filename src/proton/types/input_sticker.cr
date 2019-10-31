# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a sticker that should be added to a sticker set.
  # png_sticker [Proton::Types::InputFile] PNG image with the sticker; must be up to 512 kB in size and fit in a
  #   512x512 square.
  # emojis [::String] Emoji corresponding to the sticker.
  # mask_position [Proton::Types::MaskPosition, nil] For masks, position where the mask should be placed; may be null.
  class InputSticker < Types::Base
    property png_sticker : Proton::Types::InputFile
    property emojis : ::String
    property mask_position : Proton::Types::MaskPosition?

    def initialize(@png_sticker : Proton::Types::InputFile, @emojis : ::String, @mask_position : Proton::Types::MaskPosition? = nil)
    end
  end
end

