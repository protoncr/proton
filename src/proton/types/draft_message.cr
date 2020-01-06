# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a message draft.
  class DraftMessage < Types::Base
    include JSON::Serializable

    # Identifier of the message to reply to; 0 if none
    property reply_to_message_id : ::Int64

    # Content of the message draft; this should always be of type inputMessageText
    property input_message_text : Proton::Types::InputMessageContent

    def initialize(@reply_to_message_id : ::Int64, @input_message_text : Proton::Types::InputMessageContent)
    end
  end
end
