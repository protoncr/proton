# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A document message (general file).
  # document [Proton::Types::Document] Message content.
  # caption [Proton::Types::FormattedText] Document caption.
  class MessageContent::Document < Types::MessageContent
    property document : Proton::Types::Document
    property caption : Proton::Types::FormattedText

    def initialize(@document : Proton::Types::Document, @caption : Proton::Types::FormattedText)
    end
  end
end

