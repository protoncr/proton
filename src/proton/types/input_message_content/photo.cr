# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A photo message.
  # photo [Proton::Types::InputFile] Photo to send.
  # thumbnail [Proton::Types::InputThumbnail] Photo thumbnail to be sent, this is sent to the other party in secret
  #   chats only.
  # added_sticker_file_ids [::Array(::Int32)] File identifiers of the stickers added to the photo, if applicable.
  # width [::Int32] Photo width.
  # height [::Int32] Photo height.
  # caption [Proton::Types::FormattedText] Photo caption; 0-GetOption("message_caption_length_max") characters.
  # ttl [::Int32] Photo TTL (Time To Live), in seconds (0-60).
  #   A non-zero TTL can be specified only in private chats.
  class InputMessageContent::Photo < Types::InputMessageContent
    property photo : Proton::Types::InputFile
    property thumbnail : Proton::Types::InputThumbnail
    property added_sticker_file_ids : ::Array(::Int32)
    property width : ::Int32
    property height : ::Int32
    property caption : Proton::Types::FormattedText
    property ttl : ::Int32

    def initialize(@photo : Proton::Types::InputFile, @thumbnail : Proton::Types::InputThumbnail, @added_sticker_file_ids : ::Array(::Int32), @width : ::Int32, @height : ::Int32, @caption : Proton::Types::FormattedText, @ttl : ::Int32)
    end
  end
end

