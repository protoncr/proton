# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents an animation file.
  class InlineQueryResult::Animation < Types::InlineQueryResult
    include JSON::Serializable

    # Unique identifier of the query result
    property id : ::String

    # Animation file
    property animation : Proton::Types::Animation

    # Animation title
    property title : ::String

    def initialize(@id : ::String, @animation : Proton::Types::Animation, @title : ::String)
    end
  end
end
