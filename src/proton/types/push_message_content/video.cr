# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A video message.
  class PushMessageContent::Video < Types::PushMessageContent
    include JSON::Serializable

    # Video caption
    property caption : ::String

    # Message content; may be null
    property video : Proton::Types::Video? = nil

    # True, if the video is secret
    property is_secret : ::Bool = false

    # True, if the message is a pinned message with the specified content
    property is_pinned : ::Bool = false

    def initialize(@caption : ::String, @video : Proton::Types::Video? = nil, @is_secret : ::Bool = false, @is_pinned : ::Bool = false)
    end
  end
end
