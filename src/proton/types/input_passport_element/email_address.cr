# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A Telegram Passport element to be saved containing the user's email address.
  # email_address [::String] The email address to be saved.
  class InputPassportElement::EmailAddress < Types::InputPassportElement
    property email_address : ::String

    def initialize(@email_address : ::String)
    end
  end
end

