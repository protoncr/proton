# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about the payment method chosen by the user.
  abstract class InputCredentials < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "inputCredentialsSaved" => Types::InputCredentials::Saved,
      "inputCredentialsNew" => Types::InputCredentials::New,
      "inputCredentialsAndroidPay" => Types::InputCredentials::AndroidPay,
      "inputCredentialsApplePay" => Types::InputCredentials::ApplePay
    })
  end
end

require "./input_credentials/saved"
require "./input_credentials/new"
require "./input_credentials/android_pay"
require "./input_credentials/apple_pay"
