# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents the current authorization state of the client.
  class AuthorizationState < Types::Base

    def initialize()
    end
  end
end

require "./authorization_state/wait_tdlib_parameters"
require "./authorization_state/wait_encryption_key"
require "./authorization_state/wait_phone_number"
require "./authorization_state/wait_code"
require "./authorization_state/wait_registration"
require "./authorization_state/wait_password"
require "./authorization_state/ready"
require "./authorization_state/logging_out"
require "./authorization_state/closing"
require "./authorization_state/closed"