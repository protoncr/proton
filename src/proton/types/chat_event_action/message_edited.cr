# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A message was edited.
  # old_message [Proton::Types::Message] The original message before the edit.
  # new_message [Proton::Types::Message] The message after it was edited.
  class ChatEventAction::MessageEdited < Types::ChatEventAction
    property old_message : Proton::Types::Message
    property new_message : Proton::Types::Message

    def initialize(@old_message : Proton::Types::Message, @new_message : Proton::Types::Message)
    end
  end
end

