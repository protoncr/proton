# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A message was pinned.
  # message [Proton::Types::Message] Pinned message.
  class ChatEventAction::MessagePinned < Types::ChatEventAction
    property message : Proton::Types::Message

    def initialize(@message : Proton::Types::Message)
    end
  end
end

