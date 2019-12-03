# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # An animation.
  class PageBlock::Animation < Types::PageBlock
    include JSON::Serializable

    # Animation caption
    property caption : Proton::Types::PageBlockCaption

    # True, if the animation should be played automatically
    property need_autoplay : ::Bool

    # Animation file; may be null
    property animation : Proton::Types::Animation? = nil

    def initialize(@caption : Proton::Types::PageBlockCaption, @need_autoplay : ::Bool, @animation : Proton::Types::Animation? = nil)
    end
  end
end
