# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A sticker message.
  # sticker [Proton::Types::Sticker] Message content.
  class MessageContent::Sticker < Types::MessageContent
    property sticker : Proton::Types::Sticker

    def initialize(@sticker : Proton::Types::Sticker)
    end
  end
end

