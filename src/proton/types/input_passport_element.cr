# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a Telegram Passport element to be saved.
  abstract class InputPassportElement < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "inputPassportElementPersonalDetails" => Types::InputPassportElement::PersonalDetails,
      "inputPassportElementPassport" => Types::InputPassportElement::Passport,
      "inputPassportElementDriverLicense" => Types::InputPassportElement::DriverLicense,
      "inputPassportElementIdentityCard" => Types::InputPassportElement::IdentityCard,
      "inputPassportElementInternalPassport" => Types::InputPassportElement::InternalPassport,
      "inputPassportElementAddress" => Types::InputPassportElement::Address,
      "inputPassportElementUtilityBill" => Types::InputPassportElement::UtilityBill,
      "inputPassportElementBankStatement" => Types::InputPassportElement::BankStatement,
      "inputPassportElementRentalAgreement" => Types::InputPassportElement::RentalAgreement,
      "inputPassportElementPassportRegistration" => Types::InputPassportElement::PassportRegistration,
      "inputPassportElementTemporaryRegistration" => Types::InputPassportElement::TemporaryRegistration,
      "inputPassportElementPhoneNumber" => Types::InputPassportElement::PhoneNumber,
      "inputPassportElementEmailAddress" => Types::InputPassportElement::EmailAddress
    })
  end
end

require "./input_passport_element/personal_details"
require "./input_passport_element/passport"
require "./input_passport_element/driver_license"
require "./input_passport_element/identity_card"
require "./input_passport_element/internal_passport"
require "./input_passport_element/address"
require "./input_passport_element/utility_bill"
require "./input_passport_element/bank_statement"
require "./input_passport_element/rental_agreement"
require "./input_passport_element/passport_registration"
require "./input_passport_element/temporary_registration"
require "./input_passport_element/phone_number"
require "./input_passport_element/email_address"
