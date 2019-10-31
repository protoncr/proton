# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # New message was received.
  # message [Proton::Types::Message] The message.
  class NotificationType::NewMessage < Types::NotificationType
    property message : Proton::Types::Message

    def initialize(@message : Proton::Types::Message)
    end
  end
end

