# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A text message.
  class MessageContent::Text < Types::MessageContent
    include JSON::Serializable

    # Text of the message
    property text : Proton::Types::FormattedText

    # A preview of the web page that's mentioned in the text; may be null
    property web_page : Proton::Types::WebPage? = nil

    def initialize(@text : Proton::Types::FormattedText, @web_page : Proton::Types::WebPage? = nil)
    end
  end
end
