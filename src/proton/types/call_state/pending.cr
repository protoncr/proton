# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The call is pending, waiting to be accepted by a user.
  class CallState::Pending < Types::CallState
    include JSON::Serializable

    # True, if the call has already been created by the server
    property is_created : ::Bool = false

    # True, if the call has already been received by the other party
    property is_received : ::Bool = false

    def initialize(@is_created : ::Bool = false, @is_received : ::Bool = false)
    end
  end
end
