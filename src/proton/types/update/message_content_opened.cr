# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The message content was opened.
  # Updates voice note messages to "listened", video note messages to "viewed" and starts the TTL timer for
  #   self-destructing messages.
  class Update::MessageContentOpened < Types::Update
    include JSON::Serializable

    # Chat identifier
    property chat_id : ::Int32

    # Message identifier
    property message_id : ::Int32

    def initialize(@chat_id : ::Int32, @message_id : ::Int32)
    end
  end
end
