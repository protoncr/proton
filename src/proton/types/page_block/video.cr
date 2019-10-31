# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A video.
  # video [Proton::Types::Video, nil] Video file; may be null.
  # caption [Proton::Types::PageBlockCaption] Video caption.
  # need_autoplay [::Bool] True, if the video should be played automatically.
  # is_looped [::Bool] True, if the video should be looped.
  class PageBlock::Video < Types::PageBlock
    property video : Proton::Types::Video?
    property caption : Proton::Types::PageBlockCaption
    property need_autoplay : ::Bool
    property is_looped : ::Bool

    def initialize(@caption : Proton::Types::PageBlockCaption, @need_autoplay : ::Bool, @is_looped : ::Bool, @video : Proton::Types::Video? = nil)
    end
  end
end

