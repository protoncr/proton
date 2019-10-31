# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A photo message.
  # photo [Proton::Types::Photo] Message content.
  # caption [Proton::Types::FormattedText] Photo caption.
  # is_secret [::Bool] True, if the photo must be blurred and must be shown only while tapped.
  class MessageContent::Photo < Types::MessageContent
    property photo : Proton::Types::Photo
    property caption : Proton::Types::FormattedText
    property is_secret : ::Bool

    def initialize(@photo : Proton::Types::Photo, @caption : Proton::Types::FormattedText, @is_secret : ::Bool)
    end
  end
end

