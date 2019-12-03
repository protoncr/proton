# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A file defined by its unique ID.
  class InputFile::Id < Types::InputFile
    include JSON::Serializable

    # Unique file identifier
    property id : ::Int32

    def initialize(@id : ::Int32)
    end
  end
end
