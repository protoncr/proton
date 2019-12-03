# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents a link to an MP3 audio file.
  class InputInlineQueryResult::Audio < Types::InputInlineQueryResult
    include JSON::Serializable

    # Unique identifier of the query result
    property id : ::String

    # Title of the audio file
    property title : ::String

    # Performer of the audio file
    property performer : ::String

    # The URL of the audio file
    property audio_url : ::String

    # Audio file duration, in seconds
    property audio_duration : ::Int32

    # The message reply markup. Must be of type replyMarkupInlineKeyboard or null
    property reply_markup : Proton::Types::ReplyMarkup

    # The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageAudio, InputMessageLocation, InputMessageVenue or InputMessageContact
    property input_message_content : Proton::Types::InputMessageContent

    def initialize(@id : ::String, @title : ::String, @performer : ::String, @audio_url : ::String, @audio_duration : ::Int32, @reply_markup : Proton::Types::ReplyMarkup, @input_message_content : Proton::Types::InputMessageContent)
    end
  end
end
