# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The user authorization state has changed.
  class Update::AuthorizationState < Types::Update
    include JSON::Serializable

    # New authorization state
    property authorization_state : Proton::Types::AuthorizationState

    def initialize(@authorization_state : Proton::Types::AuthorizationState)
    end
  end
end
