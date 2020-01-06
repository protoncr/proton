# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a link to a message in a chat.
  class MessageLinkInfo < Types::Base
    include JSON::Serializable

    # If found, identifier of the chat to which the message belongs, 0 otherwise
    property chat_id : ::Int64

    # True, if the link is a public link for a message in a chat
    property is_public : ::Bool = false

    # If found, the linked message; may be null
    property message : Proton::Types::Message? = nil

    # True, if the whole media album to which the message belongs is linked
    property for_album : ::Bool = false

    def initialize(@chat_id : ::Int64, @is_public : ::Bool = false, @message : Proton::Types::Message? = nil, @for_album : ::Bool = false)
    end
  end
end
