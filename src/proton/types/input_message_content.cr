# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # The content of a message to send.
  class InputMessageContent < Types::Base

    def initialize()
    end
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