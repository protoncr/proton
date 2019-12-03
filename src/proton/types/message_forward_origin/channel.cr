# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The message was originally a post in a channel.
  class MessageForwardOrigin::Channel < Types::MessageForwardOrigin
    include JSON::Serializable

    # Identifier of the chat from which the message was originally forwarded
    property chat_id : ::Int32

    # Message identifier of the original message; 0 if unknown
    property message_id : ::Int32

    # Original post author signature
    property author_signature : ::String

    def initialize(@chat_id : ::Int32, @message_id : ::Int32, @author_signature : ::String)
    end
  end
end
