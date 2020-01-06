# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The list of recently used stickers was updated.
  class Update::RecentStickers < Types::Update
    include JSON::Serializable

    # The new list of file identifiers of recently used stickers
    property sticker_ids : ::Array(::Int32)

    # True, if the list of stickers attached to photo or video files was updated, otherwise the list of sent stickers is updated
    property is_attached : ::Bool = false

    def initialize(@sticker_ids : ::Array(::Int32), @is_attached : ::Bool = false)
    end
  end
end
