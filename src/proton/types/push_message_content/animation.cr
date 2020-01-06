# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # An animation message (GIF-style)..
  class PushMessageContent::Animation < Types::PushMessageContent
    include JSON::Serializable

    # Animation caption
    property caption : ::String

    # Message content; may be null
    property animation : Proton::Types::Animation? = nil

    # True, if the message is a pinned message with the specified content
    property is_pinned : ::Bool = false

    def initialize(@caption : ::String, @animation : Proton::Types::Animation? = nil, @is_pinned : ::Bool = false)
    end
  end
end
