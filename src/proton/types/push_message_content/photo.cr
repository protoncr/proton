# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A photo message.
  class PushMessageContent::Photo < Types::PushMessageContent
    include JSON::Serializable

    # Photo caption
    property caption : ::String

    # Message content; may be null
    property photo : Proton::Types::Photo? = nil

    # True, if the photo is secret
    property is_secret : ::Bool = false

    # True, if the message is a pinned message with the specified content
    property is_pinned : ::Bool = false

    def initialize(@caption : ::String, @photo : Proton::Types::Photo? = nil, @is_secret : ::Bool = false, @is_pinned : ::Bool = false)
    end
  end
end
