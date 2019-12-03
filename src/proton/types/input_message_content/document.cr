# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A document message (general file).
  class InputMessageContent::Document < Types::InputMessageContent
    include JSON::Serializable

    # Document to be sent
    property document : Proton::Types::InputFile

    # Document caption; 0-GetOption("message_caption_length_max") characters
    property caption : Proton::Types::FormattedText

    # Document thumbnail, if available
    property thumbnail : Proton::Types::InputThumbnail? = nil

    def initialize(@document : Proton::Types::InputFile, @caption : Proton::Types::FormattedText, @thumbnail : Proton::Types::InputThumbnail? = nil)
    end
  end
end
