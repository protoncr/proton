# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The file generation process needs to be started by the client.
  # generation_id [::Int64] Unique identifier for the generation process.
  # original_path [::String, nil] The path to a file from which a new file is generated; may be empty.
  # destination_path [::String] The path to a file that should be created and where the new file should be generated.
  # conversion [::String] String specifying the conversion applied to the original file.
  #   If conversion is "#url#" than original_path contains an HTTP/HTTPS URL of a file, which should be downloaded by
  #   the client.
  class Update::FileGenerationStart < Types::Update
    property generation_id : ::Int64
    property original_path : ::String?
    property destination_path : ::String
    property conversion : ::String

    def initialize(@generation_id : ::Int64, @destination_path : ::String, @conversion : ::String, @original_path : ::String? = nil)
    end
  end
end

