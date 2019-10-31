# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents the current state of 2-step verification.
  # has_password [::Bool] True, if a 2-step verification password is set.
  # password_hint [::String, nil] Hint for the password; may be empty.
  # has_recovery_email_address [::Bool] True, if a recovery email is set.
  # has_passport_data [::Bool] True, if some Telegram Passport elements were saved.
  # recovery_email_address_code_info [Proton::Types::EmailAddressAuthenticationCodeInfo, nil] Information about the
  #   recovery email address to which the confirmation email was sent; may be null.
  class PasswordState < Types::Base
    property has_password : ::Bool
    property password_hint : ::String?
    property has_recovery_email_address : ::Bool
    property has_passport_data : ::Bool
    property recovery_email_address_code_info : Proton::Types::EmailAddressAuthenticationCodeInfo?

    def initialize(@has_password : ::Bool, @has_recovery_email_address : ::Bool, @has_passport_data : ::Bool, @password_hint : ::String? = nil, @recovery_email_address_code_info : Proton::Types::EmailAddressAuthenticationCodeInfo? = nil)
    end
  end
end

