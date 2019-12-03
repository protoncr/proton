# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A video message.
  class PushMessageContent::Video < Types::PushMessageContent
    include JSON::Serializable

    # Video caption
    property caption : ::String

    # True, if the video is secret
    property is_secret : ::Bool

    # True, if the message is a pinned message with the specified content
    property is_pinned : ::Bool

    # Message content; may be null
    property video : Proton::Types::Video? = nil

    def initialize(@caption : ::String, @is_secret : ::Bool, @is_pinned : ::Bool, @video : Proton::Types::Video? = nil)
    end
  end
end
