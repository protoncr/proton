# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A message has been successfully sent.
  # message [Proton::Types::Message] Information about the sent message.
  #   Usually only the message identifier, date, and content are changed, but almost all other fields can also change.
  # old_message_id [::Int64] The previous temporary message identifier.
  class Update::MessageSendSucceeded < Types::Update
    property message : Proton::Types::Message
    property old_message_id : ::Int64

    def initialize(@message : Proton::Types::Message, @old_message_id : ::Int64)
    end
  end
end

