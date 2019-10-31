# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The list of attached files contains an error.
  # The error is considered resolved when the file list changes.
  # file_hashes [::Array(::String)] Current hashes of all attached files.
  class InputPassportElementErrorSource::Files < Types::InputPassportElementErrorSource
    property file_hashes : ::Array(::String)

    def initialize(@file_hashes : ::Array(::String))
    end
  end
end

