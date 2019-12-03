# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A video message.
  class MessageContent::Video < Types::MessageContent
    include JSON::Serializable

    # Message content
    property video : Proton::Types::Video

    # Video caption
    property caption : Proton::Types::FormattedText

    # True, if the video thumbnail must be blurred and the video must be shown only while tapped
    property is_secret : ::Bool

    def initialize(@video : Proton::Types::Video, @caption : Proton::Types::FormattedText, @is_secret : ::Bool)
    end
  end
end
