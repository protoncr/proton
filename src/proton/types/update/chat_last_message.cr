# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The last message of a chat was changed.
  # If last_message is null then the last message in the chat became unknown.
  # Some new unknown messages might be added to the chat in this case.
  # chat_id [::Int64] Chat identifier.
  # last_message [Proton::Types::Message, nil] The new last message in the chat; may be null.
  # order [::Int64] New value of the chat order.
  class Update::ChatLastMessage < Types::Update
    property chat_id : ::Int64
    property last_message : Proton::Types::Message?
    property order : ::Int64

    def initialize(@chat_id : ::Int64, @order : ::Int64, @last_message : Proton::Types::Message? = nil)
    end
  end
end

