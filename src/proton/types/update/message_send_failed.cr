# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message failed to send.
  # Be aware that some messages being sent can be irrecoverably deleted, in which case updateDeleteMessages will be
  #   received instead of this update.
  class Update::MessageSendFailed < Types::Update
    include JSON::Serializable

    # Contains information about the message which failed to send
    property message : Proton::Types::Message

    # The previous temporary message identifier
    property old_message_id : ::Int32

    # An error code
    property error_code : ::Int32

    # Error message
    property error_message : ::String

    def initialize(@message : Proton::Types::Message, @old_message_id : ::Int32, @error_code : ::Int32, @error_message : ::String)
    end
  end
end
