# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The message content was opened.
  # Updates voice note messages to "listened", video note messages to "viewed" and starts the TTL timer for
  #   self-destructing messages.
  # chat_id [::Int64] Chat identifier.
  # message_id [::Int64] Message identifier.
  class Update::MessageContentOpened < Types::Update
    property chat_id : ::Int64
    property message_id : ::Int64

    def initialize(@chat_id : ::Int64, @message_id : ::Int64)
    end
  end
end

