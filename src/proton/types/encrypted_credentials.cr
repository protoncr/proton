# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains encrypted Telegram Passport data credentials.
  # data [::String] The encrypted credentials.
  # hash [::String] The decrypted data hash.
  # secret [::String] Secret for data decryption, encrypted with the service's public key.
  class EncryptedCredentials < Types::Base
    property data : ::String
    property hash : ::String
    property secret : ::String

    def initialize(@data : ::String, @hash : ::String, @secret : ::String)
    end
  end
end

