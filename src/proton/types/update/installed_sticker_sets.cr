# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The list of installed sticker sets was updated.
  class Update::InstalledStickerSets < Types::Update
    include JSON::Serializable

    # The new list of installed ordinary sticker sets
    property sticker_set_ids : ::Array(::String)

    # True, if the list of installed mask sticker sets was updated
    property is_masks : ::Bool = false

    def initialize(@sticker_set_ids : ::Array(::String), @is_masks : ::Bool = false)
    end
  end
end
