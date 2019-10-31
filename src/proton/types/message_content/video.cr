# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A video message.
  # video [Proton::Types::Video] Message content.
  # caption [Proton::Types::FormattedText] Video caption.
  # is_secret [::Bool] True, if the video thumbnail must be blurred and the video must be shown only while tapped.
  class MessageContent::Video < Types::MessageContent
    property video : Proton::Types::Video
    property caption : Proton::Types::FormattedText
    property is_secret : ::Bool

    def initialize(@video : Proton::Types::Video, @caption : Proton::Types::FormattedText, @is_secret : ::Bool)
    end
  end
end

