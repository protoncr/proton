# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A PNG pattern to be combined with the color chosen by the user.
  # is_moving [::Bool] True, if the background needs to be slightly moved when device is rotated.
  # color [::Int32] Main color of the background in RGB24 format.
  # intensity [::Int32] Intensity of the pattern when it is shown above the main background color, 0-100.
  class BackgroundType::Pattern < Types::BackgroundType
    property is_moving : ::Bool
    property color : ::Int32
    property intensity : ::Int32

    def initialize(@is_moving : ::Bool, @color : ::Int32, @intensity : ::Int32)
    end
  end
end

