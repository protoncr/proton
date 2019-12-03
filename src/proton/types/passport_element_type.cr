# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains the type of a Telegram Passport element.
  abstract class PassportElementType < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "passportElementTypePersonalDetails" => Types::PassportElementType::PersonalDetails,
      "passportElementTypePassport" => Types::PassportElementType::Passport,
      "passportElementTypeDriverLicense" => Types::PassportElementType::DriverLicense,
      "passportElementTypeIdentityCard" => Types::PassportElementType::IdentityCard,
      "passportElementTypeInternalPassport" => Types::PassportElementType::InternalPassport,
      "passportElementTypeAddress" => Types::PassportElementType::Address,
      "passportElementTypeUtilityBill" => Types::PassportElementType::UtilityBill,
      "passportElementTypeBankStatement" => Types::PassportElementType::BankStatement,
      "passportElementTypeRentalAgreement" => Types::PassportElementType::RentalAgreement,
      "passportElementTypePassportRegistration" => Types::PassportElementType::PassportRegistration,
      "passportElementTypeTemporaryRegistration" => Types::PassportElementType::TemporaryRegistration,
      "passportElementTypePhoneNumber" => Types::PassportElementType::PhoneNumber,
      "passportElementTypeEmailAddress" => Types::PassportElementType::EmailAddress
    })
  end
end

require "./passport_element_type/personal_details"
require "./passport_element_type/passport"
require "./passport_element_type/driver_license"
require "./passport_element_type/identity_card"
require "./passport_element_type/internal_passport"
require "./passport_element_type/address"
require "./passport_element_type/utility_bill"
require "./passport_element_type/bank_statement"
require "./passport_element_type/rental_agreement"
require "./passport_element_type/passport_registration"
require "./passport_element_type/temporary_registration"
require "./passport_element_type/phone_number"
require "./passport_element_type/email_address"
