# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Telegram Passport data has been received; for bots only.
  class MessageContent::PassportDataReceived < Types::MessageContent
    include JSON::Serializable

    # List of received Telegram Passport elements
    property elements : ::Array(Proton::Types::EncryptedPassportElement)

    # Encrypted data credentials
    property credentials : Proton::Types::EncryptedCredentials

    def initialize(@elements : ::Array(Proton::Types::EncryptedPassportElement), @credentials : Proton::Types::EncryptedCredentials)
    end
  end
end
