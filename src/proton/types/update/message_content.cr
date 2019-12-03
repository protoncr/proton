# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The message content has changed.
  class Update::MessageContent < Types::Update
    include JSON::Serializable

    # Chat identifier
    property chat_id : ::Int64

    # Message identifier
    property message_id : ::Int64

    # New message content
    property new_content : Proton::Types::MessageContent

    def initialize(@chat_id : ::Int64, @message_id : ::Int64, @new_content : Proton::Types::MessageContent)
    end
  end
end
