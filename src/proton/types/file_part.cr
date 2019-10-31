# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a part of a file.
  # data [::String] File bytes.
  class FilePart < Types::Base
    property data : ::String

    def initialize(@data : ::String)
    end
  end
end

