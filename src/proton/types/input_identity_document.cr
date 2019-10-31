# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # An identity document to be saved to Telegram Passport.
  # number [::String] Document number; 1-24 characters.
  # expiry_date [Proton::Types::Date, nil] Document expiry date, if available.
  # front_side [Proton::Types::InputFile] Front side of the document.
  # reverse_side [Proton::Types::InputFile] Reverse side of the document; only for driver license and identity card.
  # selfie [Proton::Types::InputFile, nil] Selfie with the document, if available.
  # translation [::Array(Proton::Types::InputFile)] List of files containing a certified English translation of the
  #   document.
  class InputIdentityDocument < Types::Base
    property number : ::String
    property expiry_date : Proton::Types::Date?
    property front_side : Proton::Types::InputFile
    property reverse_side : Proton::Types::InputFile
    property selfie : Proton::Types::InputFile?
    property translation : ::Array(Proton::Types::InputFile)

    def initialize(@number : ::String, @front_side : Proton::Types::InputFile, @reverse_side : Proton::Types::InputFile, @translation : ::Array(Proton::Types::InputFile), @expiry_date : Proton::Types::Date? = nil, @selfie : Proton::Types::InputFile? = nil)
    end
  end
end

