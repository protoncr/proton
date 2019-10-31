# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The chat photo was changed.
  # old_photo [Proton::Types::Photo, nil] Previous chat photo value; may be null.
  # new_photo [Proton::Types::Photo, nil] New chat photo value; may be null.
  class ChatEventAction::PhotoChanged < Types::ChatEventAction
    property old_photo : Proton::Types::Photo?
    property new_photo : Proton::Types::Photo?

    def initialize(@old_photo : Proton::Types::Photo? = nil, @new_photo : Proton::Types::Photo? = nil)
    end
  end
end

