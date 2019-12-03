# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A Telegram Passport element to be saved containing the user's email address.
  class InputPassportElement::EmailAddress < Types::InputPassportElement
    include JSON::Serializable

    # The email address to be saved
    property email_address : ::String

    def initialize(@email_address : ::String)
    end
  end
end
