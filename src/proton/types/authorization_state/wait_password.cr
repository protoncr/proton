# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The user has been authorized, but needs to enter a password to start using the application.
  class AuthorizationState::WaitPassword < Types::AuthorizationState
    include JSON::Serializable

    # Hint for the password; may be empty
    property password_hint : ::String? = nil

    # True, if a recovery email address has been set up
    property has_recovery_email_address : ::Bool = false

    # Pattern of the email address to which the recovery email was sent; empty until a recovery email has been sent
    property recovery_email_address_pattern : ::String? = nil

    def initialize(@password_hint : ::String? = nil, @has_recovery_email_address : ::Bool = false, @recovery_email_address_pattern : ::String? = nil)
    end
  end
end
