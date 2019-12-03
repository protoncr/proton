# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Outgoing messages were read.
  class Update::ChatReadOutbox < Types::Update
    include JSON::Serializable

    # Chat identifier
    property chat_id : ::Int64

    # Identifier of last read outgoing message
    property last_read_outbox_message_id : ::Int64

    def initialize(@chat_id : ::Int64, @last_read_outbox_message_id : ::Int64)
    end
  end
end
