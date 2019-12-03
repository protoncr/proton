# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about an encrypted Telegram Passport element; for bots only.
  class EncryptedPassportElement < Types::Base
    include JSON::Serializable

    # Type of Telegram Passport element
    property type : Proton::Types::PassportElementType

    # Encrypted JSON-encoded data about the user
    property data : ::String

    # The front side of an identity document
    property front_side : Proton::Types::DatedFile

    # List of files containing a certified English translation of the document
    property translation : ::Array(Proton::Types::DatedFile)

    # List of attached files
    property files : ::Array(Proton::Types::DatedFile)

    # Unencrypted data, phone number or email address
    property value : ::String

    # Hash of the entire element
    property hash : ::String

    # The reverse side of an identity document; may be null
    property reverse_side : Proton::Types::DatedFile? = nil

    # Selfie with the document; may be null
    property selfie : Proton::Types::DatedFile? = nil

    def initialize(@type : Proton::Types::PassportElementType, @data : ::String, @front_side : Proton::Types::DatedFile, @translation : ::Array(Proton::Types::DatedFile), @files : ::Array(Proton::Types::DatedFile), @value : ::String, @hash : ::String, @reverse_side : Proton::Types::DatedFile? = nil, @selfie : Proton::Types::DatedFile? = nil)
    end
  end
end
