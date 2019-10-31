# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Outgoing messages were read.
  # chat_id [::Int64] Chat identifier.
  # last_read_outbox_message_id [::Int64] Identifier of last read outgoing message.
  class Update::ChatReadOutbox < Types::Update
    property chat_id : ::Int64
    property last_read_outbox_message_id : ::Int64

    def initialize(@chat_id : ::Int64, @last_read_outbox_message_id : ::Int64)
    end
  end
end

