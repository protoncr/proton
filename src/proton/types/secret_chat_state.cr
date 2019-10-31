# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes the current secret chat state.
  class SecretChatState < Types::Base

    def initialize()
    end
  end
end

require "./secret_chat_state/pending"
  require "./secret_chat_state/ready"
  require "./secret_chat_state/closed"