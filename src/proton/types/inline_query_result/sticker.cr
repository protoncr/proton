# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents a sticker.
  class InlineQueryResult::Sticker < Types::InlineQueryResult
    include JSON::Serializable

    # Unique identifier of the query result
    property id : ::String

    # Sticker
    property sticker : Proton::Types::Sticker

    def initialize(@id : ::String, @sticker : Proton::Types::Sticker)
    end
  end
end
