# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Information about a file was updated.
  # file [Proton::Types::File] New data about the file.
  class Update::File < Types::Update
    property file : Proton::Types::File

    def initialize(@file : Proton::Types::File)
    end
  end
end

