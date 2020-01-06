# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The sign_messages setting of a channel was toggled.
  class ChatEventAction::SignMessagesToggled < Types::ChatEventAction
    include JSON::Serializable

    # New value of sign_messages
    property sign_messages : ::Bool = false

    def initialize(@sign_messages : ::Bool = false)
    end
  end
end
