# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The translation of the document contains an error.
  # The error is considered resolved when the list of files changes.
  # file_hashes [::Array(::String)] Current hashes of all files with the translation.
  class InputPassportElementErrorSource::TranslationFiles < Types::InputPassportElementErrorSource
    property file_hashes : ::Array(::String)

    def initialize(@file_hashes : ::Array(::String))
    end
  end
end

