# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A wallpaper in JPEG format.
  # is_blurred [::Bool] True, if the wallpaper must be downscaled to fit in 450x450 square and then box-blurred with
  #   radius 12.
  # is_moving [::Bool] True, if the background needs to be slightly moved when device is rotated.
  class BackgroundType::Wallpaper < Types::BackgroundType
    property is_blurred : ::Bool
    property is_moving : ::Bool

    def initialize(@is_blurred : ::Bool, @is_moving : ::Bool)
    end
  end
end

