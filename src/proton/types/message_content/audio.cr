# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # An audio message.
  class MessageContent::Audio < Types::MessageContent
    include JSON::Serializable

    # Message content
    property audio : Proton::Types::Audio

    # Audio caption
    property caption : Proton::Types::FormattedText

    def initialize(@audio : Proton::Types::Audio, @caption : Proton::Types::FormattedText)
    end
  end
end
