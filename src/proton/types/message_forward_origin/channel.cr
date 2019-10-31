# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The message was originally a post in a channel.
  # chat_id [::Int64] Identifier of the chat from which the message was originally forwarded.
  # message_id [::Int64] Message identifier of the original message; 0 if unknown.
  # author_signature [::String] Original post author signature.
  class MessageForwardOrigin::Channel < Types::MessageForwardOrigin
    property chat_id : ::Int64
    property message_id : ::Int64
    property author_signature : ::String

    def initialize(@chat_id : ::Int64, @message_id : ::Int64, @author_signature : ::String)
    end
  end
end

