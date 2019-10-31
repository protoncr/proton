# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The list of favorite stickers was updated.
  # sticker_ids [::Array(::Int32)] The new list of file identifiers of favorite stickers.
  class Update::FavoriteStickers < Types::Update
    property sticker_ids : ::Array(::Int32)

    def initialize(@sticker_ids : ::Array(::Int32))
    end
  end
end

