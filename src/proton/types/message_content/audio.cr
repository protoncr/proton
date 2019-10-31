# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # An audio message.
  # audio [Proton::Types::Audio] Message content.
  # caption [Proton::Types::FormattedText] Audio caption.
  class MessageContent::Audio < Types::MessageContent
    property audio : Proton::Types::Audio
    property caption : Proton::Types::FormattedText

    def initialize(@audio : Proton::Types::Audio, @caption : Proton::Types::FormattedText)
    end
  end
end

