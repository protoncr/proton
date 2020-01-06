# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A video.
  class PageBlock::Video < Types::PageBlock
    include JSON::Serializable

    # Video caption
    property caption : Proton::Types::PageBlockCaption

    # Video file; may be null
    property video : Proton::Types::Video? = nil

    # True, if the video should be played automatically
    property need_autoplay : ::Bool = false

    # True, if the video should be looped
    property is_looped : ::Bool = false

    def initialize(@caption : Proton::Types::PageBlockCaption, @video : Proton::Types::Video? = nil, @need_autoplay : ::Bool = false, @is_looped : ::Bool = false)
    end
  end
end
