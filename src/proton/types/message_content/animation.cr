# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # An animation message (GIF-style)..
  # animation [Proton::Types::Animation] Message content.
  # caption [Proton::Types::FormattedText] Animation caption.
  # is_secret [::Bool] True, if the animation thumbnail must be blurred and the animation must be shown only while
  #   tapped.
  class MessageContent::Animation < Types::MessageContent
    property animation : Proton::Types::Animation
    property caption : Proton::Types::FormattedText
    property is_secret : ::Bool

    def initialize(@animation : Proton::Types::Animation, @caption : Proton::Types::FormattedText, @is_secret : ::Bool)
    end
  end
end

