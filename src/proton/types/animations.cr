# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a list of animations.
  # animations [::Array(Proton::Types::Animation)] List of animations.
  class Animations < Types::Base
    property animations : ::Array(Proton::Types::Animation)

    def initialize(@animations : ::Array(Proton::Types::Animation))
    end
  end
end

