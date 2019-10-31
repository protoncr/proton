# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A solid background.
  # color [::Int32] A color of the background in RGB24 format.
  class BackgroundType::Solid < Types::BackgroundType
    property color : ::Int32

    def initialize(@color : ::Int32)
    end
  end
end

