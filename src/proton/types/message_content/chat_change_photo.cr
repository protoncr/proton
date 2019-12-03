# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # An updated chat photo.
  class MessageContent::ChatChangePhoto < Types::MessageContent
    include JSON::Serializable

    # New chat photo
    property photo : Proton::Types::Photo

    def initialize(@photo : Proton::Types::Photo)
    end
  end
end
