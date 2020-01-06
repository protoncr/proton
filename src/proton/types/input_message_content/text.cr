# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A text message.
  class InputMessageContent::Text < Types::InputMessageContent
    include JSON::Serializable

    # Formatted text to be sent; 1-GetOption("message_text_length_max") characters. Only Bold, Italic, Code, Pre, PreCode and TextUrl entities are allowed to be specified manually
    property text : Proton::Types::FormattedText

    # True, if rich web page previews for URLs in the message text should be disabled
    property disable_web_page_preview : ::Bool = false

    # True, if a chat message draft should be deleted
    property clear_draft : ::Bool = false

    def initialize(@text : Proton::Types::FormattedText, @disable_web_page_preview : ::Bool = false, @clear_draft : ::Bool = false)
    end
  end
end
