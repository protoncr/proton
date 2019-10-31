# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A file defined by its remote ID.
  # id [::String] Remote file identifier.
  class InputFile::Remote < Types::InputFile
    property id : ::String

    def initialize(@id : ::String)
    end
  end
end

