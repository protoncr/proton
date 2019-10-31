# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # An updated chat photo.
  # photo [Proton::Types::Photo] New chat photo.
  class MessageContent::ChatChangePhoto < Types::MessageContent
    property photo : Proton::Types::Photo

    def initialize(@photo : Proton::Types::Photo)
    end
  end
end

