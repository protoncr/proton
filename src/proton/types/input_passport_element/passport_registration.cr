# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A Telegram Passport element to be saved containing the user's passport registration.
  class InputPassportElement::PassportRegistration < Types::InputPassportElement
    include JSON::Serializable

    # The passport registration page to be saved
    property passport_registration : Proton::Types::InputPersonalDocument

    def initialize(@passport_registration : Proton::Types::InputPersonalDocument)
    end
  end
end
