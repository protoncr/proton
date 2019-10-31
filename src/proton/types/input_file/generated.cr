# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A file generated by the client.
  # original_path [::String, nil] Local path to a file from which the file is generated; may be empty if there is no
  #   such file.
  # conversion [::String] String specifying the conversion applied to the original file; should be persistent across
  #   application restarts.
  #   Conversions beginning with '#' are reserved for internal TDLib usage.
  # expected_size [::Int32] Expected size of the generated file; 0 if unknown.
  class InputFile::Generated < Types::InputFile
    property original_path : ::String?
    property conversion : ::String
    property expected_size : ::Int32

    def initialize(@conversion : ::String, @expected_size : ::Int32, @original_path : ::String? = nil)
    end
  end
end

