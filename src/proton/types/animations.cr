# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a list of animations.
  class Animations < Types::Base
    include JSON::Serializable

    # List of animations
    property animations : ::Array(Proton::Types::Animation)

    def initialize(@animations : ::Array(Proton::Types::Animation))
    end
  end
end
