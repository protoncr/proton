# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A photo message.
  class MessageContent::Photo < Types::MessageContent
    include JSON::Serializable

    # Message content
    property photo : Proton::Types::Photo

    # Photo caption
    property caption : Proton::Types::FormattedText

    # True, if the photo must be blurred and must be shown only while tapped
    property is_secret : ::Bool = false

    def initialize(@photo : Proton::Types::Photo, @caption : Proton::Types::FormattedText, @is_secret : ::Bool = false)
    end
  end
end
