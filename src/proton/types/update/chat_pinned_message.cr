# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The chat pinned message was changed.
  class Update::ChatPinnedMessage < Types::Update
    include JSON::Serializable

    # Chat identifier
    property chat_id : ::Int32

    # The new identifier of the pinned message; 0 if there is no pinned message in the chat
    property pinned_message_id : ::Int32

    def initialize(@chat_id : ::Int32, @pinned_message_id : ::Int32)
    end
  end
end
