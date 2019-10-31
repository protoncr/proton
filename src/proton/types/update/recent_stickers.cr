# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The list of recently used stickers was updated.
  # is_attached [::Bool] True, if the list of stickers attached to photo or video files was updated, otherwise the list
  #   of sent stickers is updated.
  # sticker_ids [::Array(::Int32)] The new list of file identifiers of recently used stickers.
  class Update::RecentStickers < Types::Update
    property is_attached : ::Bool
    property sticker_ids : ::Array(::Int32)

    def initialize(@is_attached : ::Bool, @sticker_ids : ::Array(::Int32))
    end
  end
end

