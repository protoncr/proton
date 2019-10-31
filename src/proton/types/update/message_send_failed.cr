# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A message failed to send.
  # Be aware that some messages being sent can be irrecoverably deleted, in which case updateDeleteMessages will be
  #   received instead of this update.
  # message [Proton::Types::Message] Contains information about the message which failed to send.
  # old_message_id [::Int64] The previous temporary message identifier.
  # error_code [::Int32] An error code.
  # error_message [::String] Error message.
  class Update::MessageSendFailed < Types::Update
    property message : Proton::Types::Message
    property old_message_id : ::Int64
    property error_code : ::Int32
    property error_message : ::String

    def initialize(@message : Proton::Types::Message, @old_message_id : ::Int64, @error_code : ::Int32, @error_message : ::String)
    end
  end
end

