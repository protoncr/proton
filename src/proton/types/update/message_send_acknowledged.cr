# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A request to send a message has reached the Telegram server.
  # This doesn't mean that the message will be sent successfully or even that the send message request will be
  #   processed.
  # This update will be sent only if the option "use_quick_ack" is set to true.
  # This update may be sent multiple times for the same message.
  class Update::MessageSendAcknowledged < Types::Update
    include JSON::Serializable

    # The chat identifier of the sent message
    property chat_id : ::Int32

    # A temporary message identifier
    property message_id : ::Int32

    def initialize(@chat_id : ::Int32, @message_id : ::Int32)
    end
  end
end
