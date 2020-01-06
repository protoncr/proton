# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A video note message.
  class PushMessageContent::VideoNote < Types::PushMessageContent
    include JSON::Serializable

    # Message content; may be null
    property video_note : Proton::Types::VideoNote? = nil

    # True, if the message is a pinned message with the specified content
    property is_pinned : ::Bool = false

    def initialize(@video_note : Proton::Types::VideoNote? = nil, @is_pinned : ::Bool = false)
    end
  end
end
