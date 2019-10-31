# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Telegram Passport data has been received; for bots only.
  # elements [::Array(Proton::Types::EncryptedPassportElement)] List of received Telegram Passport elements.
  # credentials [Proton::Types::EncryptedCredentials] Encrypted data credentials.
  class MessageContent::PassportDataReceived < Types::MessageContent
    property elements : ::Array(Proton::Types::EncryptedPassportElement)
    property credentials : Proton::Types::EncryptedCredentials

    def initialize(@elements : ::Array(Proton::Types::EncryptedPassportElement), @credentials : Proton::Types::EncryptedCredentials)
    end
  end
end

