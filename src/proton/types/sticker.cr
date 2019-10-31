# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a sticker.
  # set_id [::Int64] The identifier of the sticker set to which the sticker belongs; 0 if none.
  # width [::Int32] Sticker width; as defined by the sender.
  # height [::Int32] Sticker height; as defined by the sender.
  # emoji [::String] Emoji corresponding to the sticker.
  # is_animated [::Bool] True, if the sticker is an animated sticker in TGS format.
  # is_mask [::Bool] True, if the sticker is a mask.
  # mask_position [Proton::Types::MaskPosition, nil] Position where the mask should be placed; may be null.
  # thumbnail [Proton::Types::PhotoSize, nil] Sticker thumbnail in WEBP or JPEG format; may be null.
  # sticker [Proton::Types::File] File containing the sticker.
  class Sticker < Types::Base
    property set_id : ::Int64
    property width : ::Int32
    property height : ::Int32
    property emoji : ::String
    property is_animated : ::Bool
    property is_mask : ::Bool
    property mask_position : Proton::Types::MaskPosition?
    property thumbnail : Proton::Types::PhotoSize?
    property sticker : Proton::Types::File

    def initialize(@set_id : ::Int64, @width : ::Int32, @height : ::Int32, @emoji : ::String, @is_animated : ::Bool, @is_mask : ::Bool, @sticker : Proton::Types::File, @mask_position : Proton::Types::MaskPosition? = nil, @thumbnail : Proton::Types::PhotoSize? = nil)
    end
  end
end

