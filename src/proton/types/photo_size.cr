# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Photo description.
  class PhotoSize < Types::Base
    include JSON::Serializable

    # Thumbnail type (see https://core.telegram.org/constructor/photoSize)
    property type : ::String

    # Information about the photo file
    property photo : Proton::Types::File

    # Photo width
    property width : ::Int32

    # Photo height
    property height : ::Int32

    def initialize(@type : ::String, @photo : Proton::Types::File, @width : ::Int32, @height : ::Int32)
    end
  end
end
