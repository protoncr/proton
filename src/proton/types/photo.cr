# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a photo.
  # has_stickers [::Bool] True, if stickers were added to the photo.
  # minithumbnail [Proton::Types::Minithumbnail, nil] Photo minithumbnail; may be null.
  # sizes [::Array(Proton::Types::PhotoSize)] Available variants of the photo, in different sizes.
  class Photo < Types::Base
    property has_stickers : ::Bool
    property minithumbnail : Proton::Types::Minithumbnail?
    property sizes : ::Array(Proton::Types::PhotoSize)

    def initialize(@has_stickers : ::Bool, @sizes : ::Array(Proton::Types::PhotoSize), @minithumbnail : Proton::Types::Minithumbnail? = nil)
    end
  end
end

