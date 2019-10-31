# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # One of the files containing the translation of the document contains an error.
  # The error is considered resolved when the file with the translation changes.
  # file_hash [::String] Current hash of the file containing the translation.
  class InputPassportElementErrorSource::TranslationFile < Types::InputPassportElementErrorSource
    property file_hash : ::String

    def initialize(@file_hash : ::String)
    end
  end
end

