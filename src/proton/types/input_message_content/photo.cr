# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A photo message.
  class InputMessageContent::Photo < Types::InputMessageContent
    include JSON::Serializable

    # Photo to send
    property photo : Proton::Types::InputFile

    # Photo thumbnail to be sent, this is sent to the other party in secret chats only
    property thumbnail : Proton::Types::InputThumbnail

    # File identifiers of the stickers added to the photo, if applicable
    property added_sticker_file_ids : ::Array(::Int32)

    # Photo width
    property width : ::Int32

    # Photo height
    property height : ::Int32

    # Photo caption; 0-GetOption("message_caption_length_max") characters
    property caption : Proton::Types::FormattedText

    # Photo TTL (Time To Live), in seconds (0-60). A non-zero TTL can be specified only in private chats
    property ttl : ::Int32

    def initialize(@photo : Proton::Types::InputFile, @thumbnail : Proton::Types::InputThumbnail, @added_sticker_file_ids : ::Array(::Int32), @width : ::Int32, @height : ::Int32, @caption : Proton::Types::FormattedText, @ttl : ::Int32)
    end
  end
end
