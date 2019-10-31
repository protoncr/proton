# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A text message.
  # text [::String] Message text.
  # is_pinned [::Bool] True, if the message is a pinned message with the specified content.
  class PushMessageContent::Text < Types::PushMessageContent
    property text : ::String
    property is_pinned : ::Bool

    def initialize(@text : ::String, @is_pinned : ::Bool)
    end
  end
end

