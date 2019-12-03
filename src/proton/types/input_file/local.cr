# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A file defined by a local path.
  class InputFile::Local < Types::InputFile
    include JSON::Serializable

    # Local path to the file
    property path : ::String

    def initialize(@path : ::String)
    end
  end
end
