# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The last message of a chat was changed.
  # If last_message is null then the last message in the chat became unknown.
  # Some new unknown messages might be added to the chat in this case.
  class Update::ChatLastMessage < Types::Update
    include JSON::Serializable

    # Chat identifier
    property chat_id : ::Int32

    # New value of the chat order
    property order : ::String

    # The new last message in the chat; may be null
    property last_message : Proton::Types::Message? = nil

    def initialize(@chat_id : ::Int32, @order : ::String, @last_message : Proton::Types::Message? = nil)
    end
  end
end
