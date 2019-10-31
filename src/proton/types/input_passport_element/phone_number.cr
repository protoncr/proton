# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A Telegram Passport element to be saved containing the user's phone number.
  # phone_number [::String] The phone number to be saved.
  class InputPassportElement::PhoneNumber < Types::InputPassportElement
    property phone_number : ::String

    def initialize(@phone_number : ::String)
    end
  end
end

