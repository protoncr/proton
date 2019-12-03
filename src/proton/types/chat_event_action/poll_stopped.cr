# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A poll in a message was stopped.
  class ChatEventAction::PollStopped < Types::ChatEventAction
    include JSON::Serializable

    # The message with the poll
    property message : Proton::Types::Message

    def initialize(@message : Proton::Types::Message)
    end
  end
end
