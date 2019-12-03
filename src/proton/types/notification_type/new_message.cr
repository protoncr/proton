# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # New message was received.
  class NotificationType::NewMessage < Types::NotificationType
    include JSON::Serializable

    # The message
    property message : Proton::Types::Message

    def initialize(@message : Proton::Types::Message)
    end
  end
end
