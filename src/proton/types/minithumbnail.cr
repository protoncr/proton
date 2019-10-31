# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Thumbnail image of a very poor quality and low resolution.
  # width [::Int32] Thumbnail width, usually doesn't exceed 40.
  # height [::Int32] Thumbnail height, usually doesn't exceed 40.
  # data [::String] The thumbnail in JPEG format.
  class Minithumbnail < Types::Base
    property width : ::Int32
    property height : ::Int32
    property data : ::String

    def initialize(@width : ::Int32, @height : ::Int32, @data : ::String)
    end
  end
end

