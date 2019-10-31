# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A video message.
  # video [Proton::Types::InputFile] Video to be sent.
  # thumbnail [Proton::Types::InputThumbnail, nil] Video thumbnail, if available.
  # added_sticker_file_ids [::Array(::Int32)] File identifiers of the stickers added to the video, if applicable.
  # duration [::Int32] Duration of the video, in seconds.
  # width [::Int32] Video width.
  # height [::Int32] Video height.
  # supports_streaming [::Bool] True, if the video should be tried to be streamed.
  # caption [Proton::Types::FormattedText] Video caption; 0-GetOption("message_caption_length_max") characters.
  # ttl [::Int32] Video TTL (Time To Live), in seconds (0-60).
  #   A non-zero TTL can be specified only in private chats.
  class InputMessageContent::Video < Types::InputMessageContent
    property video : Proton::Types::InputFile
    property thumbnail : Proton::Types::InputThumbnail?
    property added_sticker_file_ids : ::Array(::Int32)
    property duration : ::Int32
    property width : ::Int32
    property height : ::Int32
    property supports_streaming : ::Bool
    property caption : Proton::Types::FormattedText
    property ttl : ::Int32

    def initialize(@video : Proton::Types::InputFile, @added_sticker_file_ids : ::Array(::Int32), @duration : ::Int32, @width : ::Int32, @height : ::Int32, @supports_streaming : ::Bool, @caption : Proton::Types::FormattedText, @ttl : ::Int32, @thumbnail : Proton::Types::InputThumbnail? = nil)
    end
  end
end

