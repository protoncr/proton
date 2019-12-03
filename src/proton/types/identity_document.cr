# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # An identity document.
  class IdentityDocument < Types::Base
    include JSON::Serializable

    # Document number; 1-24 characters
    property number : ::String

    # Front side of the document
    property front_side : Proton::Types::DatedFile

    # Reverse side of the document; only for driver license and identity card
    property reverse_side : Proton::Types::DatedFile

    # List of files containing a certified English translation of the document
    property translation : ::Array(Proton::Types::DatedFile)

    # Document expiry date; may be null
    property expiry_date : Proton::Types::Date? = nil

    # Selfie with the document; may be null
    property selfie : Proton::Types::DatedFile? = nil

    def initialize(@number : ::String, @front_side : Proton::Types::DatedFile, @reverse_side : Proton::Types::DatedFile, @translation : ::Array(Proton::Types::DatedFile), @expiry_date : Proton::Types::Date? = nil, @selfie : Proton::Types::DatedFile? = nil)
    end
  end
end
