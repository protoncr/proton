# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Thumbnail image of a very poor quality and low resolution.
  class Minithumbnail < Types::Base
    include JSON::Serializable

    # Thumbnail width, usually doesn't exceed 40
    property width : ::Int32

    # Thumbnail height, usually doesn't exceed 40
    property height : ::Int32

    # The thumbnail in JPEG format
    property data : ::String

    def initialize(@width : ::Int32, @height : ::Int32, @data : ::String)
    end
  end
end
