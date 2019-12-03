# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # An identity document to be saved to Telegram Passport.
  class InputIdentityDocument < Types::Base
    include JSON::Serializable

    # Document number; 1-24 characters
    property number : ::String

    # Front side of the document
    property front_side : Proton::Types::InputFile

    # Reverse side of the document; only for driver license and identity card
    property reverse_side : Proton::Types::InputFile

    # List of files containing a certified English translation of the document
    property translation : ::Array(Proton::Types::InputFile)

    # Document expiry date, if available
    property expiry_date : Proton::Types::Date? = nil

    # Selfie with the document, if available
    property selfie : Proton::Types::InputFile? = nil

    def initialize(@number : ::String, @front_side : Proton::Types::InputFile, @reverse_side : Proton::Types::InputFile, @translation : ::Array(Proton::Types::InputFile), @expiry_date : Proton::Types::Date? = nil, @selfie : Proton::Types::InputFile? = nil)
    end
  end
end
