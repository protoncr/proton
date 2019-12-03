# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a document of any type.
  class Document < Types::Base
    include JSON::Serializable

    # Original name of the file; as defined by the sender
    property file_name : ::String

    # MIME type of the file; as defined by the sender
    property mime_type : ::String

    # File containing the document
    property document : Proton::Types::File

    # Document minithumbnail; may be null
    property minithumbnail : Proton::Types::Minithumbnail? = nil

    # Document thumbnail in JPEG or PNG format (PNG will be used only for background patterns); as defined by the sender; may be null
    property thumbnail : Proton::Types::PhotoSize? = nil

    def initialize(@file_name : ::String, @mime_type : ::String, @document : Proton::Types::File, @minithumbnail : Proton::Types::Minithumbnail? = nil, @thumbnail : Proton::Types::PhotoSize? = nil)
    end
  end
end
