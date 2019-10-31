# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Position on a photo where a mask should be placed.
  # point [Proton::Types::MaskPoint] Part of the face, relative to which the mask should be placed.
  # x_shift [::Float64] Shift by X-axis measured in widths of the mask scaled to the face size, from left to right.
  #   (For example, -1.0 will place the mask just to the left of the default mask position).
  # y_shift [::Float64] Shift by Y-axis measured in heights of the mask scaled to the face size, from top to bottom.
  #   (For example, 1.0 will place the mask just below the default mask position).
  # scale [::Float64] Mask scaling coefficient.
  #   (For example, 2.0 means a doubled size).
  class MaskPosition < Types::Base
    property point : Proton::Types::MaskPoint
    property x_shift : ::Float64
    property y_shift : ::Float64
    property scale : ::Float64

    def initialize(@point : Proton::Types::MaskPoint, @x_shift : ::Float64, @y_shift : ::Float64, @scale : ::Float64)
    end
  end
end

