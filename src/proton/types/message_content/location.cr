# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A message with a location.
  # location [Proton::Types::Location] Message content.
  # live_period [::Int32] Time relative to the message sent date until which the location can be updated, in seconds.
  # expires_in [::Int32] Left time for which the location can be updated, in seconds.
  #   updateMessageContent is not sent when this field changes.
  class MessageContent::Location < Types::MessageContent
    property location : Proton::Types::Location
    property live_period : ::Int32
    property expires_in : ::Int32

    def initialize(@location : Proton::Types::Location, @live_period : ::Int32, @expires_in : ::Int32)
    end
  end
end

