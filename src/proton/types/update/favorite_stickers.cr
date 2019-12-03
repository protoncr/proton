# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The list of favorite stickers was updated.
  class Update::FavoriteStickers < Types::Update
    include JSON::Serializable

    # The new list of file identifiers of favorite stickers
    property sticker_ids : ::Array(::Int32)

    def initialize(@sticker_ids : ::Array(::Int32))
    end
  end
end
