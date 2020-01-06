# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The message failed to be sent.
  class MessageSendingState::Failed < Types::MessageSendingState
    include JSON::Serializable

    # An error code; 0 if unknown
    property error_code : ::Int32

    # Error message
    property error_message : ::String

    # Time left before the message can be re-sent, in seconds. No update is sent when this field changes
    property retry_after : ::Float64

    # True, if the message can be re-sent
    property can_retry : ::Bool = false

    def initialize(@error_code : ::Int32, @error_message : ::String, @retry_after : ::Float64, @can_retry : ::Bool = false)
    end
  end
end
