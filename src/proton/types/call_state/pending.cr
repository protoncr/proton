# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The call is pending, waiting to be accepted by a user.
  # is_created [::Bool] True, if the call has already been created by the server.
  # is_received [::Bool] True, if the call has already been received by the other party.
  class CallState::Pending < Types::CallState
    property is_created : ::Bool
    property is_received : ::Bool

    def initialize(@is_created : ::Bool, @is_received : ::Bool)
    end
  end
end

