# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message has been successfully sent.
  class Update::MessageSendSucceeded < Types::Update
    include JSON::Serializable

    # Information about the sent message. Usually only the message identifier, date, and content are changed, but almost all other fields can also change
    property message : Proton::Types::Message

    # The previous temporary message identifier
    property old_message_id : ::Int64

    def initialize(@message : Proton::Types::Message, @old_message_id : ::Int64)
    end
  end
end
