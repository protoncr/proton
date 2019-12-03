# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes the reason why a call was discarded.
  abstract class CallDiscardReason < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "callDiscardReasonEmpty" => Types::CallDiscardReason::Empty,
      "callDiscardReasonMissed" => Types::CallDiscardReason::Missed,
      "callDiscardReasonDeclined" => Types::CallDiscardReason::Declined,
      "callDiscardReasonDisconnected" => Types::CallDiscardReason::Disconnected,
      "callDiscardReasonHungUp" => Types::CallDiscardReason::HungUp
    })
  end
end

require "./call_discard_reason/empty"
require "./call_discard_reason/missed"
require "./call_discard_reason/declined"
require "./call_discard_reason/disconnected"
require "./call_discard_reason/hung_up"
