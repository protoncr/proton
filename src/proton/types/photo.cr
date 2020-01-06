# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a photo.
  class Photo < Types::Base
    include JSON::Serializable

    # Available variants of the photo, in different sizes
    property sizes : ::Array(Proton::Types::PhotoSize)

    # True, if stickers were added to the photo
    property has_stickers : ::Bool = false

    # Photo minithumbnail; may be null
    property minithumbnail : Proton::Types::Minithumbnail? = nil

    def initialize(@sizes : ::Array(Proton::Types::PhotoSize), @has_stickers : ::Bool = false, @minithumbnail : Proton::Types::Minithumbnail? = nil)
    end
  end
end
