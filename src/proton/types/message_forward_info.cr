# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a forwarded message.
  # origin [Proton::Types::MessageForwardOrigin] Origin of a forwarded message.
  # date [::Int32] Point in time (Unix timestamp) when the message was originally sent.
  # from_chat_id [::Int64] For messages forwarded to the chat with the current user (saved messages) or to the channel
  #   discussion supergroup, the identifier of the chat from which the message was forwarded last time; 0 if unknown.
  # from_message_id [::Int64] For messages forwarded to the chat with the current user (saved messages) or to the
  #   channel discussion supergroup, the identifier of the original message from which the new message was forwarded last
  #   time; 0 if unknown.
  class MessageForwardInfo < Types::Base
    property origin : Proton::Types::MessageForwardOrigin
    property date : ::Int32
    property from_chat_id : ::Int64
    property from_message_id : ::Int64

    def initialize(@origin : Proton::Types::MessageForwardOrigin, @date : ::Int32, @from_chat_id : ::Int64, @from_message_id : ::Int64)
    end
  end
end

