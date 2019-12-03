# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The call is pending, waiting to be accepted by a user.
  class CallState::Pending < Types::CallState
    include JSON::Serializable

    # True, if the call has already been created by the server
    property is_created : ::Bool

    # True, if the call has already been received by the other party
    property is_received : ::Bool

    def initialize(@is_created : ::Bool, @is_received : ::Bool)
    end
  end
end
