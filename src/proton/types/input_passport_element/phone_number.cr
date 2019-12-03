# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A Telegram Passport element to be saved containing the user's phone number.
  class InputPassportElement::PhoneNumber < Types::InputPassportElement
    include JSON::Serializable

    # The phone number to be saved
    property phone_number : ::String

    def initialize(@phone_number : ::String)
    end
  end
end
