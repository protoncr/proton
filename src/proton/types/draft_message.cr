# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a message draft.
  # reply_to_message_id [::Int64] Identifier of the message to reply to; 0 if none.
  # input_message_text [Proton::Types::InputMessageContent] Content of the message draft; this should always be of type
  #   inputMessageText.
  class DraftMessage < Types::Base
    property reply_to_message_id : ::Int64
    property input_message_text : Proton::Types::InputMessageContent

    def initialize(@reply_to_message_id : ::Int64, @input_message_text : Proton::Types::InputMessageContent)
    end
  end
end

