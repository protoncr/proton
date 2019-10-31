# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a document of any type.
  # file_name [::String] Original name of the file; as defined by the sender.
  # mime_type [::String] MIME type of the file; as defined by the sender.
  # minithumbnail [Proton::Types::Minithumbnail, nil] Document minithumbnail; may be null.
  # thumbnail [Proton::Types::PhotoSize, nil] Document thumbnail in JPEG or PNG format (PNG will be used only for
  #   background patterns); as defined by the sender; may be null.
  # document [Proton::Types::File] File containing the document.
  class Document < Types::Base
    property file_name : ::String
    property mime_type : ::String
    property minithumbnail : Proton::Types::Minithumbnail?
    property thumbnail : Proton::Types::PhotoSize?
    property document : Proton::Types::File

    def initialize(@file_name : ::String, @mime_type : ::String, @document : Proton::Types::File, @minithumbnail : Proton::Types::Minithumbnail? = nil, @thumbnail : Proton::Types::PhotoSize? = nil)
    end
  end
end

