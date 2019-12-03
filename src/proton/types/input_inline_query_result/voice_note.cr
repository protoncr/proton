# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Represents a link to an opus-encoded audio file within an OGG container, single channel audio.
  class InputInlineQueryResult::VoiceNote < Types::InputInlineQueryResult
    include JSON::Serializable

    # Unique identifier of the query result
    property id : ::String

    # Title of the voice note
    property title : ::String

    # The URL of the voice note file
    property voice_note_url : ::String

    # Duration of the voice note, in seconds
    property voice_note_duration : ::Int32

    # The message reply markup. Must be of type replyMarkupInlineKeyboard or null
    property reply_markup : Proton::Types::ReplyMarkup

    # The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageVoiceNote, InputMessageLocation, InputMessageVenue or InputMessageContact
    property input_message_content : Proton::Types::InputMessageContent

    def initialize(@id : ::String, @title : ::String, @voice_note_url : ::String, @voice_note_duration : ::Int32, @reply_markup : Proton::Types::ReplyMarkup, @input_message_content : Proton::Types::InputMessageContent)
    end
  end
end
