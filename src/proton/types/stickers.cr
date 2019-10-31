# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a list of stickers.
  # stickers [::Array(Proton::Types::Sticker)] List of stickers.
  class Stickers < Types::Base
    property stickers : ::Array(Proton::Types::Sticker)

    def initialize(@stickers : ::Array(Proton::Types::Sticker))
    end
  end
end

