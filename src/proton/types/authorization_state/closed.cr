# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # TDLib client is in its final state.
  # All databases are closed and all resources are released.
  # No other updates will be received after this.
  # All queries will be responded to with error code 500.
  # To continue working, one should create a new instance of the TDLib client.
  class AuthorizationState::Closed < Types::AuthorizationState

    def initialize()
    end
  end
end

