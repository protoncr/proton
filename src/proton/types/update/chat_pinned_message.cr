# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The chat pinned message was changed.
  class Update::ChatPinnedMessage < Types::Update
    include JSON::Serializable

    # Chat identifier
    property chat_id : ::Int64

    # The new identifier of the pinned message; 0 if there is no pinned message in the chat
    property pinned_message_id : ::Int64

    def initialize(@chat_id : ::Int64, @pinned_message_id : ::Int64)
    end
  end
end
