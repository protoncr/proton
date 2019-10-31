# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The message failed to be sent.
  # error_code [::Int32] An error code; 0 if unknown.
  # error_message [::String] Error message.
  # can_retry [::Bool] True, if the message can be re-sent.
  # retry_after [::Float64] Time left before the message can be re-sent, in seconds.
  #   No update is sent when this field changes.
  class MessageSendingState::Failed < Types::MessageSendingState
    property error_code : ::Int32
    property error_message : ::String
    property can_retry : ::Bool
    property retry_after : ::Float64

    def initialize(@error_code : ::Int32, @error_message : ::String, @can_retry : ::Bool, @retry_after : ::Float64)
    end
  end
end

