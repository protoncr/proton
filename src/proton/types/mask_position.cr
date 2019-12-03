# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Position on a photo where a mask should be placed.
  class MaskPosition < Types::Base
    include JSON::Serializable

    # Part of the face, relative to which the mask should be placed
    property point : Proton::Types::MaskPoint

    # Shift by X-axis measured in widths of the mask scaled to the face size, from left to right. (For example, -1.0 will place the mask just to the left of the default mask position)
    property x_shift : ::Float64

    # Shift by Y-axis measured in heights of the mask scaled to the face size, from top to bottom. (For example, 1.0 will place the mask just below the default mask position)
    property y_shift : ::Float64

    # Mask scaling coefficient. (For example, 2.0 means a doubled size)
    property scale : ::Float64

    def initialize(@point : Proton::Types::MaskPoint, @x_shift : ::Float64, @y_shift : ::Float64, @scale : ::Float64)
    end
  end
end
