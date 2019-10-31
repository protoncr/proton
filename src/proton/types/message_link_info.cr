# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a link to a message in a chat.
  # is_public [::Bool] True, if the link is a public link for a message in a chat.
  # chat_id [::Int64] If found, identifier of the chat to which the message belongs, 0 otherwise.
  # message [Proton::Types::Message, nil] If found, the linked message; may be null.
  # for_album [::Bool] True, if the whole media album to which the message belongs is linked.
  class MessageLinkInfo < Types::Base
    property is_public : ::Bool
    property chat_id : ::Int64
    property message : Proton::Types::Message?
    property for_album : ::Bool

    def initialize(@is_public : ::Bool, @chat_id : ::Int64, @for_album : ::Bool, @message : Proton::Types::Message? = nil)
    end
  end
end

