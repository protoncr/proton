# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The call has ended successfully.
  class CallState::Discarded < Types::CallState
    include JSON::Serializable

    # The reason, why the call has ended
    property reason : Proton::Types::CallDiscardReason

    # True, if the call rating should be sent to the server
    property need_rating : ::Bool = false

    # True, if the call debug information should be sent to the server
    property need_debug_information : ::Bool = false

    def initialize(@reason : Proton::Types::CallDiscardReason, @need_rating : ::Bool = false, @need_debug_information : ::Bool = false)
    end
  end
end
