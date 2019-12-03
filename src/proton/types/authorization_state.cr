# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents the current authorization state of the client.
  abstract class AuthorizationState < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "authorizationStateWaitTdlibParameters" => Types::AuthorizationState::WaitTdlibParameters,
      "authorizationStateWaitEncryptionKey" => Types::AuthorizationState::WaitEncryptionKey,
      "authorizationStateWaitPhoneNumber" => Types::AuthorizationState::WaitPhoneNumber,
      "authorizationStateWaitCode" => Types::AuthorizationState::WaitCode,
      "authorizationStateWaitRegistration" => Types::AuthorizationState::WaitRegistration,
      "authorizationStateWaitPassword" => Types::AuthorizationState::WaitPassword,
      "authorizationStateReady" => Types::AuthorizationState::Ready,
      "authorizationStateLoggingOut" => Types::AuthorizationState::LoggingOut,
      "authorizationStateClosing" => Types::AuthorizationState::Closing,
      "authorizationStateClosed" => Types::AuthorizationState::Closed
    })
  end
end

require "./authorization_state/wait_tdlib_parameters"
require "./authorization_state/wait_encryption_key"
require "./authorization_state/wait_phone_number"
require "./authorization_state/wait_code"
require "./authorization_state/wait_registration"
require "./authorization_state/wait_password"
require "./authorization_state/ready"
require "./authorization_state/logging_out"
require "./authorization_state/closing"
require "./authorization_state/closed"
