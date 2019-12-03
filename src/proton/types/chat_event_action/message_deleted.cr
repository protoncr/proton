# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message was deleted.
  class ChatEventAction::MessageDeleted < Types::ChatEventAction
    include JSON::Serializable

    # Deleted message
    property message : Proton::Types::Message

    def initialize(@message : Proton::Types::Message)
    end
  end
end
