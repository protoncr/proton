# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # TDLib needs the user's authentication code to authorize.
  class AuthorizationState::WaitCode < Types::AuthorizationState
    include JSON::Serializable

    # Information about the authorization code that was sent
    property code_info : Proton::Types::AuthenticationCodeInfo

    def initialize(@code_info : Proton::Types::AuthenticationCodeInfo)
    end
  end
end
