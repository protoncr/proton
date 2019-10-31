# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about the sending state of the message.
  class MessageSendingState < Types::Base

    def initialize()
    end
  end
end

require "./message_sending_state/pending"
  require "./message_sending_state/failed"