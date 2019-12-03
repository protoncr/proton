# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message was edited.
  class ChatEventAction::MessageEdited < Types::ChatEventAction
    include JSON::Serializable

    # The original message before the edit
    property old_message : Proton::Types::Message

    # The message after it was edited
    property new_message : Proton::Types::Message

    def initialize(@old_message : Proton::Types::Message, @new_message : Proton::Types::Message)
    end
  end
end
