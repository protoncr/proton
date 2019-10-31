# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A poll in a message was stopped.
  # message [Proton::Types::Message] The message with the poll.
  class ChatEventAction::PollStopped < Types::ChatEventAction
    property message : Proton::Types::Message

    def initialize(@message : Proton::Types::Message)
    end
  end
end

