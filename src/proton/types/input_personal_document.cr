# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # A personal document to be saved to Telegram Passport.
  # files [::Array(Proton::Types::InputFile)] List of files containing the pages of the document.
  # translation [::Array(Proton::Types::InputFile)] List of files containing a certified English translation of the
  #   document.
  class InputPersonalDocument < Types::Base
    property files : ::Array(Proton::Types::InputFile)
    property translation : ::Array(Proton::Types::InputFile)

    def initialize(@files : ::Array(Proton::Types::InputFile), @translation : ::Array(Proton::Types::InputFile))
    end
  end
end

