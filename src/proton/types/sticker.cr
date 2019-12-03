# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a sticker.
  class Sticker < Types::Base
    include JSON::Serializable

    # The identifier of the sticker set to which the sticker belongs; 0 if none
    property set_id : ::String

    # Sticker width; as defined by the sender
    property width : ::Int32

    # Sticker height; as defined by the sender
    property height : ::Int32

    # Emoji corresponding to the sticker
    property emoji : ::String

    # True, if the sticker is an animated sticker in TGS format
    property is_animated : ::Bool

    # True, if the sticker is a mask
    property is_mask : ::Bool

    # File containing the sticker
    property sticker : Proton::Types::File

    # Position where the mask should be placed; may be null
    property mask_position : Proton::Types::MaskPosition? = nil

    # Sticker thumbnail in WEBP or JPEG format; may be null
    property thumbnail : Proton::Types::PhotoSize? = nil

    def initialize(@set_id : ::String, @width : ::Int32, @height : ::Int32, @emoji : ::String, @is_animated : ::Bool, @is_mask : ::Bool, @sticker : Proton::Types::File, @mask_position : Proton::Types::MaskPosition? = nil, @thumbnail : Proton::Types::PhotoSize? = nil)
    end
  end
end
