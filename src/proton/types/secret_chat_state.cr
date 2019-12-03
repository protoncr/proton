# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes the current secret chat state.
  abstract class SecretChatState < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "secretChatStatePending" => Types::SecretChatState::Pending,
      "secretChatStateReady" => Types::SecretChatState::Ready,
      "secretChatStateClosed" => Types::SecretChatState::Closed
    })
  end
end

require "./secret_chat_state/pending"
require "./secret_chat_state/ready"
require "./secret_chat_state/closed"
