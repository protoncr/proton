# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # An animation.
  # animation [Proton::Types::Animation, nil] Animation file; may be null.
  # caption [Proton::Types::PageBlockCaption] Animation caption.
  # need_autoplay [::Bool] True, if the animation should be played automatically.
  class PageBlock::Animation < Types::PageBlock
    property animation : Proton::Types::Animation?
    property caption : Proton::Types::PageBlockCaption
    property need_autoplay : ::Bool

    def initialize(@caption : Proton::Types::PageBlockCaption, @need_autoplay : ::Bool, @animation : Proton::Types::Animation? = nil)
    end
  end
end

