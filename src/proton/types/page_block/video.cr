# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A video.
  class PageBlock::Video < Types::PageBlock
    include JSON::Serializable

    # Video caption
    property caption : Proton::Types::PageBlockCaption

    # True, if the video should be played automatically
    property need_autoplay : ::Bool

    # True, if the video should be looped
    property is_looped : ::Bool

    # Video file; may be null
    property video : Proton::Types::Video? = nil

    def initialize(@caption : Proton::Types::PageBlockCaption, @need_autoplay : ::Bool, @is_looped : ::Bool, @video : Proton::Types::Video? = nil)
    end
  end
end
