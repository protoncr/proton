# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The list of recently used stickers was updated.
  class Update::RecentStickers < Types::Update
    include JSON::Serializable

    # True, if the list of stickers attached to photo or video files was updated, otherwise the list of sent stickers is updated
    property is_attached : ::Bool

    # The new list of file identifiers of recently used stickers
    property sticker_ids : ::Array(::Int32)

    def initialize(@is_attached : ::Bool, @sticker_ids : ::Array(::Int32))
    end
  end
end
