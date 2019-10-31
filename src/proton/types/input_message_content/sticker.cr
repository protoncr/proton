# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A sticker message.
  # sticker [Proton::Types::InputFile] Sticker to be sent.
  # thumbnail [Proton::Types::InputThumbnail, nil] Sticker thumbnail, if available.
  # width [::Int32] Sticker width.
  # height [::Int32] Sticker height.
  class InputMessageContent::Sticker < Types::InputMessageContent
    property sticker : Proton::Types::InputFile
    property thumbnail : Proton::Types::InputThumbnail?
    property width : ::Int32
    property height : ::Int32

    def initialize(@sticker : Proton::Types::InputFile, @width : ::Int32, @height : ::Int32, @thumbnail : Proton::Types::InputThumbnail? = nil)
    end
  end
end

