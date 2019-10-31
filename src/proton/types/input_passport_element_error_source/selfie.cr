# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The selfie contains an error.
  # The error is considered resolved when the file with the selfie changes.
  # file_hash [::String] Current hash of the file containing the selfie.
  class InputPassportElementErrorSource::Selfie < Types::InputPassportElementErrorSource
    property file_hash : ::String

    def initialize(@file_hash : ::String)
    end
  end
end

