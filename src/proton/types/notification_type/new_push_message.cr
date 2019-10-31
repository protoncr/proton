# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # New message was received through a push notification.
  # message_id [::Int64] The message identifier.
  #   The message will not be available in the chat history, but the ID can be used in viewMessages and as
  #   reply_to_message_id.
  # sender_user_id [::Int32] Sender of the message.
  #   Corresponding user may be inaccessible.
  # content [Proton::Types::PushMessageContent] Push message content.
  class NotificationType::NewPushMessage < Types::NotificationType
    property message_id : ::Int64
    property sender_user_id : ::Int32
    property content : Proton::Types::PushMessageContent

    def initialize(@message_id : ::Int64, @sender_user_id : ::Int32, @content : Proton::Types::PushMessageContent)
    end
  end
end

