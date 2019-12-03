# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A Telegram Passport element containing the user's phone number.
  class PassportElement::PhoneNumber < Types::PassportElement
    include JSON::Serializable

    # Phone number
    property phone_number : ::String

    def initialize(@phone_number : ::String)
    end
  end
end
