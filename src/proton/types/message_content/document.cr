# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A document message (general file).
  class MessageContent::Document < Types::MessageContent
    include JSON::Serializable

    # Message content
    property document : Proton::Types::Document

    # Document caption
    property caption : Proton::Types::FormattedText

    def initialize(@document : Proton::Types::Document, @caption : Proton::Types::FormattedText)
    end
  end
end
