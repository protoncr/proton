# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # File generation is no longer needed.
  class Update::FileGenerationStop < Types::Update
    include JSON::Serializable

    # Unique identifier for the generation process
    property generation_id : ::Int64

    def initialize(@generation_id : ::Int64)
    end
  end
end
