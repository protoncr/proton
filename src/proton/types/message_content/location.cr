# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message with a location.
  class MessageContent::Location < Types::MessageContent
    include JSON::Serializable

    # Message content
    property location : Proton::Types::Location

    # Time relative to the message sent date until which the location can be updated, in seconds
    property live_period : ::Int32

    # Left time for which the location can be updated, in seconds. updateMessageContent is not sent when this field changes
    property expires_in : ::Int32

    def initialize(@location : Proton::Types::Location, @live_period : ::Int32, @expires_in : ::Int32)
    end
  end
end
