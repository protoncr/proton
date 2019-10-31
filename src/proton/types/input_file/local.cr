# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A file defined by a local path.
  # path [::String] Local path to the file.
  class InputFile::Local < Types::InputFile
    property path : ::String

    def initialize(@path : ::String)
    end
  end
end

