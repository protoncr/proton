# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # An identity document.
  # number [::String] Document number; 1-24 characters.
  # expiry_date [Proton::Types::Date, nil] Document expiry date; may be null.
  # front_side [Proton::Types::DatedFile] Front side of the document.
  # reverse_side [Proton::Types::DatedFile] Reverse side of the document; only for driver license and identity card.
  # selfie [Proton::Types::DatedFile, nil] Selfie with the document; may be null.
  # translation [::Array(Proton::Types::DatedFile)] List of files containing a certified English translation of the
  #   document.
  class IdentityDocument < Types::Base
    property number : ::String
    property expiry_date : Proton::Types::Date?
    property front_side : Proton::Types::DatedFile
    property reverse_side : Proton::Types::DatedFile
    property selfie : Proton::Types::DatedFile?
    property translation : ::Array(Proton::Types::DatedFile)

    def initialize(@number : ::String, @front_side : Proton::Types::DatedFile, @reverse_side : Proton::Types::DatedFile, @translation : ::Array(Proton::Types::DatedFile), @expiry_date : Proton::Types::Date? = nil, @selfie : Proton::Types::DatedFile? = nil)
    end
  end
end

