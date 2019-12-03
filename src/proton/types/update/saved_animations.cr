# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # The list of saved animations was updated.
  class Update::SavedAnimations < Types::Update
    include JSON::Serializable

    # The new list of file identifiers of saved animations
    property animation_ids : ::Array(::Int32)

    def initialize(@animation_ids : ::Array(::Int32))
    end
  end
end
