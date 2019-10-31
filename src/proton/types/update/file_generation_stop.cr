# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # File generation is no longer needed.
  # generation_id [::Int64] Unique identifier for the generation process.
  class Update::FileGenerationStop < Types::Update
    property generation_id : ::Int64

    def initialize(@generation_id : ::Int64)
    end
  end
end

