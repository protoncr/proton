# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A photo.
  class PageBlock::Photo < Types::PageBlock
    include JSON::Serializable

    # Photo caption
    property caption : Proton::Types::PageBlockCaption

    # URL that needs to be opened when the photo is clicked
    property url : ::String

    # Photo file; may be null
    property photo : Proton::Types::Photo? = nil

    def initialize(@caption : Proton::Types::PageBlockCaption, @url : ::String, @photo : Proton::Types::Photo? = nil)
    end
  end
end
