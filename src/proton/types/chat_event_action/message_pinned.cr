# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message was pinned.
  class ChatEventAction::MessagePinned < Types::ChatEventAction
    include JSON::Serializable

    # Pinned message
    property message : Proton::Types::Message

    def initialize(@message : Proton::Types::Message)
    end
  end
end
