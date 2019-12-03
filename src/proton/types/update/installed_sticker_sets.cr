# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The list of installed sticker sets was updated.
  class Update::InstalledStickerSets < Types::Update
    include JSON::Serializable

    # True, if the list of installed mask sticker sets was updated
    property is_masks : ::Bool

    # The new list of installed ordinary sticker sets
    property sticker_set_ids : ::Array(::String)

    def initialize(@is_masks : ::Bool, @sticker_set_ids : ::Array(::String))
    end
  end
end
