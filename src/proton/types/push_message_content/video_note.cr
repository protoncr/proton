# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A video note message.
  class PushMessageContent::VideoNote < Types::PushMessageContent
    include JSON::Serializable

    # True, if the message is a pinned message with the specified content
    property is_pinned : ::Bool

    # Message content; may be null
    property video_note : Proton::Types::VideoNote? = nil

    def initialize(@is_pinned : ::Bool, @video_note : Proton::Types::VideoNote? = nil)
    end
  end
end
