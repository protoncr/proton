# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents a sticker.
  # id [::String] Unique identifier of the query result.
  # sticker [Proton::Types::Sticker] Sticker.
  class InlineQueryResult::Sticker < Types::InlineQueryResult
    property id : ::String
    property sticker : Proton::Types::Sticker

    def initialize(@id : ::String, @sticker : Proton::Types::Sticker)
    end
  end
end

