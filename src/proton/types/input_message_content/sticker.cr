# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A sticker message.
  class InputMessageContent::Sticker < Types::InputMessageContent
    include JSON::Serializable

    # Sticker to be sent
    property sticker : Proton::Types::InputFile

    # Sticker width
    property width : ::Int32

    # Sticker height
    property height : ::Int32

    # Sticker thumbnail, if available
    property thumbnail : Proton::Types::InputThumbnail? = nil

    def initialize(@sticker : Proton::Types::InputFile, @width : ::Int32, @height : ::Int32, @thumbnail : Proton::Types::InputThumbnail? = nil)
    end
  end
end
