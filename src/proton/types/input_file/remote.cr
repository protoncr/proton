# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A file defined by its remote ID.
  class InputFile::Remote < Types::InputFile
    include JSON::Serializable

    # Remote file identifier
    property id : ::String

    def initialize(@id : ::String)
    end
  end
end
