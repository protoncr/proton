# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains settings for the authentication of the user's phone number.
  class PhoneNumberAuthenticationSettings < Types::Base
    include JSON::Serializable

    # Pass true if the authentication code may be sent via flash call to the specified phone number
    property allow_flash_call : ::Bool

    # Pass true if the authenticated phone number is used on the current device
    property is_current_phone_number : ::Bool

    # For official applications only. True, if the app can use Android SMS Retriever API (requires Google Play Services >= 10.2) to automatically receive the authentication code from the SMS. See https://developers.google.com/identity/sms-retriever/ for more details
    property allow_sms_retriever_api : ::Bool

    def initialize(@allow_flash_call : ::Bool, @is_current_phone_number : ::Bool, @allow_sms_retriever_api : ::Bool)
    end
  end
end
