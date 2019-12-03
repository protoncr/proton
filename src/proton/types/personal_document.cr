# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # A personal document, containing some information about a user.
  class PersonalDocument < Types::Base
    include JSON::Serializable

    # List of files containing the pages of the document
    property files : ::Array(Proton::Types::DatedFile)

    # List of files containing a certified English translation of the document
    property translation : ::Array(Proton::Types::DatedFile)

    def initialize(@files : ::Array(Proton::Types::DatedFile), @translation : ::Array(Proton::Types::DatedFile))
    end
  end
end
