# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A Telegram Passport element containing the user's rental agreement.
  class PassportElement::RentalAgreement < Types::PassportElement
    include JSON::Serializable

    # Rental agreement
    property rental_agreement : Proton::Types::PersonalDocument

    def initialize(@rental_agreement : Proton::Types::PersonalDocument)
    end
  end
end
