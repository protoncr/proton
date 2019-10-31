# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A Telegram Passport element to be saved containing the user's passport registration.
  # passport_registration [Proton::Types::InputPersonalDocument] The passport registration page to be saved.
  class InputPassportElement::PassportRegistration < Types::InputPassportElement
    property passport_registration : Proton::Types::InputPersonalDocument

    def initialize(@passport_registration : Proton::Types::InputPersonalDocument)
    end
  end
end

