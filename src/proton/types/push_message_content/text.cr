# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A text message.
  class PushMessageContent::Text < Types::PushMessageContent
    include JSON::Serializable

    # Message text
    property text : ::String

    # True, if the message is a pinned message with the specified content
    property is_pinned : ::Bool

    def initialize(@text : ::String, @is_pinned : ::Bool)
    end
  end
end
