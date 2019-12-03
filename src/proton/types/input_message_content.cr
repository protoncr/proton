# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # The content of a message to send.
  abstract class InputMessageContent < Types::Base
    include JSON::Serializable

    use_json_discriminator("@type", {
      "inputMessageText" => Types::InputMessageContent::Text,
      "inputMessageAnimation" => Types::InputMessageContent::Animation,
      "inputMessageAudio" => Types::InputMessageContent::Audio,
      "inputMessageDocument" => Types::InputMessageContent::Document,
      "inputMessagePhoto" => Types::InputMessageContent::Photo,
      "inputMessageSticker" => Types::InputMessageContent::Sticker,
      "inputMessageVideo" => Types::InputMessageContent::Video,
      "inputMessageVideoNote" => Types::InputMessageContent::VideoNote,
      "inputMessageVoiceNote" => Types::InputMessageContent::VoiceNote,
      "inputMessageLocation" => Types::InputMessageContent::Location,
      "inputMessageVenue" => Types::InputMessageContent::Venue,
      "inputMessageContact" => Types::InputMessageContent::Contact,
      "inputMessageGame" => Types::InputMessageContent::Game,
      "inputMessageInvoice" => Types::InputMessageContent::Invoice,
      "inputMessagePoll" => Types::InputMessageContent::Poll,
      "inputMessageForwarded" => Types::InputMessageContent::Forwarded
    })
  end
end

require "./input_message_content/text"
require "./input_message_content/animation"
require "./input_message_content/audio"
require "./input_message_content/document"
require "./input_message_content/photo"
require "./input_message_content/sticker"
require "./input_message_content/video"
require "./input_message_content/video_note"
require "./input_message_content/voice_note"
require "./input_message_content/location"
require "./input_message_content/venue"
require "./input_message_content/contact"
require "./input_message_content/game"
require "./input_message_content/invoice"
require "./input_message_content/poll"
require "./input_message_content/forwarded"
