# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents the current state of 2-step verification.
  class PasswordState < Types::Base
    include JSON::Serializable

    # True, if a 2-step verification password is set
    property has_password : ::Bool = false

    # Hint for the password; may be empty
    property password_hint : ::String? = nil

    # True, if a recovery email is set
    property has_recovery_email_address : ::Bool = false

    # True, if some Telegram Passport elements were saved
    property has_passport_data : ::Bool = false

    # Information about the recovery email address to which the confirmation email was sent; may be null
    property recovery_email_address_code_info : Proton::Types::EmailAddressAuthenticationCodeInfo? = nil

    def initialize(@has_password : ::Bool = false, @password_hint : ::String? = nil, @has_recovery_email_address : ::Bool = false, @has_passport_data : ::Bool = false, @recovery_email_address_code_info : Proton::Types::EmailAddressAuthenticationCodeInfo? = nil)
    end
  end
end
