# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The list of installed sticker sets was updated.
  # is_masks [::Bool] True, if the list of installed mask sticker sets was updated.
  # sticker_set_ids [::Array(::Int64)] The new list of installed ordinary sticker sets.
  class Update::InstalledStickerSets < Types::Update
    property is_masks : ::Bool
    property sticker_set_ids : ::Array(::Int64)

    def initialize(@is_masks : ::Bool, @sticker_set_ids : ::Array(::Int64))
    end
  end
end

