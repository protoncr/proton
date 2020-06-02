module Proton
  abstract class AuthFlow
    # :nodoc:
    property! client : Proton::Client

    @encryption_key : String?

    def initialize(@encryption_key = nil, @allow_flash_call = false, @current_phone_number = true, @force_sms = false)
    end

    abstract def request_encryption_key

    abstract def request_phone_number

    abstract def request_code

    abstract def request_password

    abstract def request_registration
  end
end

require "./auth_flows/*"
