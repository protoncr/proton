# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a forwarded message.
  class MessageForwardInfo < Types::Base
    include JSON::Serializable

    # Origin of a forwarded message
    property origin : Proton::Types::MessageForwardOrigin

    # Point in time (Unix timestamp) when the message was originally sent
    property date : ::Int32

    # For messages forwarded to the chat with the current user (saved messages) or to the channel discussion supergroup, the identifier of the chat from which the message was forwarded last time; 0 if unknown
    property from_chat_id : ::Int64

    # For messages forwarded to the chat with the current user (saved messages) or to the channel discussion supergroup, the identifier of the original message from which the new message was forwarded last time; 0 if unknown
    property from_message_id : ::Int64

    def initialize(@origin : Proton::Types::MessageForwardOrigin, @date : ::Int32, @from_chat_id : ::Int64, @from_message_id : ::Int64)
    end
  end
end
