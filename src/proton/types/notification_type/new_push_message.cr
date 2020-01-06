# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # New message was received through a push notification.
  class NotificationType::NewPushMessage < Types::NotificationType
    include JSON::Serializable

    # The message identifier. The message will not be available in the chat history, but the ID can be used in viewMessages and as reply_to_message_id
    property message_id : ::Int64

    # Sender of the message. Corresponding user may be inaccessible
    property sender_user_id : ::Int32

    # Push message content
    property content : Proton::Types::PushMessageContent

    def initialize(@message_id : ::Int64, @sender_user_id : ::Int32, @content : Proton::Types::PushMessageContent)
    end
  end
end
