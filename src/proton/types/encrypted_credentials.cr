# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains encrypted Telegram Passport data credentials.
  class EncryptedCredentials < Types::Base
    include JSON::Serializable

    # The encrypted credentials
    property data : ::String

    # The decrypted data hash
    property hash : ::String

    # Secret for data decryption, encrypted with the service's public key
    property secret : ::String

    def initialize(@data : ::String, @hash : ::String, @secret : ::String)
    end
  end
end
