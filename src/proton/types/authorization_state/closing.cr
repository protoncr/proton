# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # TDLib is closing, all subsequent queries will be answered with the error 500.
  # Note that closing TDLib can take a while.
  # All resources will be freed only after authorizationStateClosed has been received.
  class AuthorizationState::Closing < Types::AuthorizationState

    def initialize()
    end
  end
end

