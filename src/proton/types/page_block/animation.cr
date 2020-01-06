# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # An animation.
  class PageBlock::Animation < Types::PageBlock
    include JSON::Serializable

    # Animation caption
    property caption : Proton::Types::PageBlockCaption

    # Animation file; may be null
    property animation : Proton::Types::Animation? = nil

    # True, if the animation should be played automatically
    property need_autoplay : ::Bool = false

    def initialize(@caption : Proton::Types::PageBlockCaption, @animation : Proton::Types::Animation? = nil, @need_autoplay : ::Bool = false)
    end
  end
end
