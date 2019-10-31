# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The user has been authorized, but needs to enter a password to start using the application.
  # password_hint [::String, nil] Hint for the password; may be empty.
  # has_recovery_email_address [::Bool] True, if a recovery email address has been set up.
  # recovery_email_address_pattern [::String, nil] Pattern of the email address to which the recovery email was sent;
  #   empty until a recovery email has been sent.
  class AuthorizationState::WaitPassword < Types::AuthorizationState
    property password_hint : ::String?
    property has_recovery_email_address : ::Bool
    property recovery_email_address_pattern : ::String?

    def initialize(@has_recovery_email_address : ::Bool, @password_hint : ::String? = nil, @recovery_email_address_pattern : ::String? = nil)
    end
  end
end

