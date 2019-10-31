# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A text message.
  # text [Proton::Types::FormattedText] Formatted text to be sent; 1-GetOption("message_text_length_max") characters.
  #   Only Bold, Italic, Code, Pre, PreCode and TextUrl entities are allowed to be specified manually.
  # disable_web_page_preview [::Bool] True, if rich web page previews for URLs in the message text should be disabled.
  # clear_draft [::Bool] True, if a chat message draft should be deleted.
  class InputMessageContent::Text < Types::InputMessageContent
    property text : Proton::Types::FormattedText
    property disable_web_page_preview : ::Bool
    property clear_draft : ::Bool

    def initialize(@text : Proton::Types::FormattedText, @disable_web_page_preview : ::Bool, @clear_draft : ::Bool)
    end
  end
end

