# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message has been pinned.
  class MessageContent::PinMessage < Types::MessageContent
    include JSON::Serializable

    # Identifier of the pinned message, can be an identifier of a deleted message or 0
    property message_id : ::Int32

    def initialize(@message_id : ::Int32)
    end
  end
end
