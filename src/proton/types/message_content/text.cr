# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A text message.
  # text [Proton::Types::FormattedText] Text of the message.
  # web_page [Proton::Types::WebPage, nil] A preview of the web page that's mentioned in the text; may be null.
  class MessageContent::Text < Types::MessageContent
    property text : Proton::Types::FormattedText
    property web_page : Proton::Types::WebPage?

    def initialize(@text : Proton::Types::FormattedText, @web_page : Proton::Types::WebPage? = nil)
    end
  end
end

