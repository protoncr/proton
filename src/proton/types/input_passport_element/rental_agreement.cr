# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A Telegram Passport element to be saved containing the user's rental agreement.
  class InputPassportElement::RentalAgreement < Types::InputPassportElement
    include JSON::Serializable

    # The rental agreement to be saved
    property rental_agreement : Proton::Types::InputPersonalDocument

    def initialize(@rental_agreement : Proton::Types::InputPersonalDocument)
    end
  end
end
