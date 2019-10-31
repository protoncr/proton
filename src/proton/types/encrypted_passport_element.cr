# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about an encrypted Telegram Passport element; for bots only.
  # type [Proton::Types::PassportElementType] Type of Telegram Passport element.
  # data [::String] Encrypted JSON-encoded data about the user.
  # front_side [Proton::Types::DatedFile] The front side of an identity document.
  # reverse_side [Proton::Types::DatedFile, nil] The reverse side of an identity document; may be null.
  # selfie [Proton::Types::DatedFile, nil] Selfie with the document; may be null.
  # translation [::Array(Proton::Types::DatedFile)] List of files containing a certified English translation of the
  #   document.
  # files [::Array(Proton::Types::DatedFile)] List of attached files.
  # value [::String] Unencrypted data, phone number or email address.
  # hash [::String] Hash of the entire element.
  class EncryptedPassportElement < Types::Base
    property type : Proton::Types::PassportElementType
    property data : ::String
    property front_side : Proton::Types::DatedFile
    property reverse_side : Proton::Types::DatedFile?
    property selfie : Proton::Types::DatedFile?
    property translation : ::Array(Proton::Types::DatedFile)
    property files : ::Array(Proton::Types::DatedFile)
    property value : ::String
    property hash : ::String

    def initialize(@type : Proton::Types::PassportElementType, @data : ::String, @front_side : Proton::Types::DatedFile, @translation : ::Array(Proton::Types::DatedFile), @files : ::Array(Proton::Types::DatedFile), @value : ::String, @hash : ::String, @reverse_side : Proton::Types::DatedFile? = nil, @selfie : Proton::Types::DatedFile? = nil)
    end
  end
end

