# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # An animation message (GIF-style)..
  class MessageContent::Animation < Types::MessageContent
    include JSON::Serializable

    # Message content
    property animation : Proton::Types::Animation

    # Animation caption
    property caption : Proton::Types::FormattedText

    # True, if the animation thumbnail must be blurred and the animation must be shown only while tapped
    property is_secret : ::Bool

    def initialize(@animation : Proton::Types::Animation, @caption : Proton::Types::FormattedText, @is_secret : ::Bool)
    end
  end
end
