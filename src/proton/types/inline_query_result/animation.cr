# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents an animation file.
  # id [::String] Unique identifier of the query result.
  # animation [Proton::Types::Animation] Animation file.
  # title [::String] Animation title.
  class InlineQueryResult::Animation < Types::InlineQueryResult
    property id : ::String
    property animation : Proton::Types::Animation
    property title : ::String

    def initialize(@id : ::String, @animation : Proton::Types::Animation, @title : ::String)
    end
  end
end

