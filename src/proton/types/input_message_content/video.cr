# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A video message.
  class InputMessageContent::Video < Types::InputMessageContent
    include JSON::Serializable

    # Video to be sent
    property video : Proton::Types::InputFile

    # File identifiers of the stickers added to the video, if applicable
    property added_sticker_file_ids : ::Array(::Int32)

    # Duration of the video, in seconds
    property duration : ::Int32

    # Video width
    property width : ::Int32

    # Video height
    property height : ::Int32

    # True, if the video should be tried to be streamed
    property supports_streaming : ::Bool

    # Video caption; 0-GetOption("message_caption_length_max") characters
    property caption : Proton::Types::FormattedText

    # Video TTL (Time To Live), in seconds (0-60). A non-zero TTL can be specified only in private chats
    property ttl : ::Int32

    # Video thumbnail, if available
    property thumbnail : Proton::Types::InputThumbnail? = nil

    def initialize(@video : Proton::Types::InputFile, @added_sticker_file_ids : ::Array(::Int32), @duration : ::Int32, @width : ::Int32, @height : ::Int32, @supports_streaming : ::Bool, @caption : Proton::Types::FormattedText, @ttl : ::Int32, @thumbnail : Proton::Types::InputThumbnail? = nil)
    end
  end
end
