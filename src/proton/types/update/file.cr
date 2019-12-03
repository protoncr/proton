# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Information about a file was updated.
  class Update::File < Types::Update
    include JSON::Serializable

    # New data about the file
    property file : Proton::Types::File

    def initialize(@file : Proton::Types::File)
    end
  end
end
