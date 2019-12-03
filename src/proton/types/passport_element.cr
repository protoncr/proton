# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a Telegram Passport element.
  abstract class PassportElement < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "passportElementPersonalDetails" => Types::PassportElement::PersonalDetails,
      "passportElementPassport" => Types::PassportElement::Passport,
      "passportElementDriverLicense" => Types::PassportElement::DriverLicense,
      "passportElementIdentityCard" => Types::PassportElement::IdentityCard,
      "passportElementInternalPassport" => Types::PassportElement::InternalPassport,
      "passportElementAddress" => Types::PassportElement::Address,
      "passportElementUtilityBill" => Types::PassportElement::UtilityBill,
      "passportElementBankStatement" => Types::PassportElement::BankStatement,
      "passportElementRentalAgreement" => Types::PassportElement::RentalAgreement,
      "passportElementPassportRegistration" => Types::PassportElement::PassportRegistration,
      "passportElementTemporaryRegistration" => Types::PassportElement::TemporaryRegistration,
      "passportElementPhoneNumber" => Types::PassportElement::PhoneNumber,
      "passportElementEmailAddress" => Types::PassportElement::EmailAddress
    })
  end
end

require "./passport_element/personal_details"
require "./passport_element/passport"
require "./passport_element/driver_license"
require "./passport_element/identity_card"
require "./passport_element/internal_passport"
require "./passport_element/address"
require "./passport_element/utility_bill"
require "./passport_element/bank_statement"
require "./passport_element/rental_agreement"
require "./passport_element/passport_registration"
require "./passport_element/temporary_registration"
require "./passport_element/phone_number"
require "./passport_element/email_address"
