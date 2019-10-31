# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The message was originally written by a user, which is hidden by their privacy settings.
  # sender_name [::String] Name of the sender.
  class MessageForwardOrigin::HiddenUser < Types::MessageForwardOrigin
    property sender_name : ::String

    def initialize(@sender_name : ::String)
    end
  end
end

