# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes the current call state.
  abstract class CallState < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "callStatePending" => Types::CallState::Pending,
      "callStateExchangingKeys" => Types::CallState::ExchangingKeys,
      "callStateReady" => Types::CallState::Ready,
      "callStateHangingUp" => Types::CallState::HangingUp,
      "callStateDiscarded" => Types::CallState::Discarded,
      "callStateError" => Types::CallState::Error
    })
  end
end

require "./call_state/pending"
require "./call_state/exchanging_keys"
require "./call_state/ready"
require "./call_state/hanging_up"
require "./call_state/discarded"
require "./call_state/error"
