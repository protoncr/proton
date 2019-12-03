# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A sticker message.
  class MessageContent::Sticker < Types::MessageContent
    include JSON::Serializable

    # Message content
    property sticker : Proton::Types::Sticker

    def initialize(@sticker : Proton::Types::Sticker)
    end
  end
end
