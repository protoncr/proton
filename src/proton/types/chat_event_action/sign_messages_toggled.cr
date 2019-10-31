# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The sign_messages setting of a channel was toggled.
  # sign_messages [::Bool] New value of sign_messages.
  class ChatEventAction::SignMessagesToggled < Types::ChatEventAction
    property sign_messages : ::Bool

    def initialize(@sign_messages : ::Bool)
    end
  end
end

