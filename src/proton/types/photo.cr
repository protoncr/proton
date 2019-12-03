# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a photo.
  class Photo < Types::Base
    include JSON::Serializable

    # True, if stickers were added to the photo
    property has_stickers : ::Bool

    # Available variants of the photo, in different sizes
    property sizes : ::Array(Proton::Types::PhotoSize)

    # Photo minithumbnail; may be null
    property minithumbnail : Proton::Types::Minithumbnail? = nil

    def initialize(@has_stickers : ::Bool, @sizes : ::Array(Proton::Types::PhotoSize), @minithumbnail : Proton::Types::Minithumbnail? = nil)
    end
  end
end
