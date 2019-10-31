# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A document message (general file).
  # document [Proton::Types::InputFile] Document to be sent.
  # thumbnail [Proton::Types::InputThumbnail, nil] Document thumbnail, if available.
  # caption [Proton::Types::FormattedText] Document caption; 0-GetOption("message_caption_length_max") characters.
  class InputMessageContent::Document < Types::InputMessageContent
    property document : Proton::Types::InputFile
    property thumbnail : Proton::Types::InputThumbnail?
    property caption : Proton::Types::FormattedText

    def initialize(@document : Proton::Types::InputFile, @caption : Proton::Types::FormattedText, @thumbnail : Proton::Types::InputThumbnail? = nil)
    end
  end
end

