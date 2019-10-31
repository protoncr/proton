# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents a link to an opus-encoded audio file within an OGG container, single channel audio.
  # id [::String] Unique identifier of the query result.
  # title [::String] Title of the voice note.
  # voice_note_url [::String] The URL of the voice note file.
  # voice_note_duration [::Int32] Duration of the voice note, in seconds.
  # reply_markup [Proton::Types::ReplyMarkup] The message reply markup.
  #   Must be of type replyMarkupInlineKeyboard or null.
  # input_message_content [Proton::Types::InputMessageContent] The content of the message to be sent.
  #   Must be one of the following types: InputMessageText, InputMessageVoiceNote, InputMessageLocation,
  #   InputMessageVenue or InputMessageContact.
  class InputInlineQueryResult::VoiceNote < Types::InputInlineQueryResult
    property id : ::String
    property title : ::String
    property voice_note_url : ::String
    property voice_note_duration : ::Int32
    property reply_markup : Proton::Types::ReplyMarkup
    property input_message_content : Proton::Types::InputMessageContent

    def initialize(@id : ::String, @title : ::String, @voice_note_url : ::String, @voice_note_duration : ::Int32, @reply_markup : Proton::Types::ReplyMarkup, @input_message_content : Proton::Types::InputMessageContent)
    end
  end
end

