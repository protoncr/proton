# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # One of files with the translation of the document contains an error.
  # The error will be considered resolved when the file changes.
  # file_index [::Int32] Index of a file with the error.
  class PassportElementErrorSource::TranslationFile < Types::PassportElementErrorSource
    property file_index : ::Int32

    def initialize(@file_index : ::Int32)
    end
  end
end

