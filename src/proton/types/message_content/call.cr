# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message with information about an ended call.
  class MessageContent::Call < Types::MessageContent
    include JSON::Serializable

    # Reason why the call was discarded
    property discard_reason : Proton::Types::CallDiscardReason

    # Call duration, in seconds
    property duration : ::Int32

    def initialize(@discard_reason : Proton::Types::CallDiscardReason, @duration : ::Int32)
    end
  end
end
