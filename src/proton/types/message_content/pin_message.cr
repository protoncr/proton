# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A message has been pinned.
  # message_id [::Int64] Identifier of the pinned message, can be an identifier of a deleted message or 0.
  class MessageContent::PinMessage < Types::MessageContent
    property message_id : ::Int64

    def initialize(@message_id : ::Int64)
    end
  end
end

