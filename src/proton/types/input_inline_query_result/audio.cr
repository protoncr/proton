# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Represents a link to an MP3 audio file.
  # id [::String] Unique identifier of the query result.
  # title [::String] Title of the audio file.
  # performer [::String] Performer of the audio file.
  # audio_url [::String] The URL of the audio file.
  # audio_duration [::Int32] Audio file duration, in seconds.
  # reply_markup [Proton::Types::ReplyMarkup] The message reply markup.
  #   Must be of type replyMarkupInlineKeyboard or null.
  # input_message_content [Proton::Types::InputMessageContent] The content of the message to be sent.
  #   Must be one of the following types: InputMessageText, InputMessageAudio, InputMessageLocation, InputMessageVenue
  #   or InputMessageContact.
  class InputInlineQueryResult::Audio < Types::InputInlineQueryResult
    property id : ::String
    property title : ::String
    property performer : ::String
    property audio_url : ::String
    property audio_duration : ::Int32
    property reply_markup : Proton::Types::ReplyMarkup
    property input_message_content : Proton::Types::InputMessageContent

    def initialize(@id : ::String, @title : ::String, @performer : ::String, @audio_url : ::String, @audio_duration : ::Int32, @reply_markup : Proton::Types::ReplyMarkup, @input_message_content : Proton::Types::InputMessageContent)
    end
  end
end

