# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A message with information about an ended call.
  # discard_reason [Proton::Types::CallDiscardReason] Reason why the call was discarded.
  # duration [::Int32] Call duration, in seconds.
  class MessageContent::Call < Types::MessageContent
    property discard_reason : Proton::Types::CallDiscardReason
    property duration : ::Int32

    def initialize(@discard_reason : Proton::Types::CallDiscardReason, @duration : ::Int32)
    end
  end
end

