# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The chat photo was changed.
  class ChatEventAction::PhotoChanged < Types::ChatEventAction
    include JSON::Serializable

    # Previous chat photo value; may be null
    property old_photo : Proton::Types::Photo? = nil

    # New chat photo value; may be null
    property new_photo : Proton::Types::Photo? = nil

    def initialize(@old_photo : Proton::Types::Photo? = nil, @new_photo : Proton::Types::Photo? = nil)
    end
  end
end
