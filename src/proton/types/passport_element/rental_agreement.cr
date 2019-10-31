# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A Telegram Passport element containing the user's rental agreement.
  # rental_agreement [Proton::Types::PersonalDocument] Rental agreement.
  class PassportElement::RentalAgreement < Types::PassportElement
    property rental_agreement : Proton::Types::PersonalDocument

    def initialize(@rental_agreement : Proton::Types::PersonalDocument)
    end
  end
end

