# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A photo message.
  class PushMessageContent::Photo < Types::PushMessageContent
    include JSON::Serializable

    # Photo caption
    property caption : ::String

    # True, if the photo is secret
    property is_secret : ::Bool

    # True, if the message is a pinned message with the specified content
    property is_pinned : ::Bool

    # Message content; may be null
    property photo : Proton::Types::Photo? = nil

    def initialize(@caption : ::String, @is_secret : ::Bool, @is_pinned : ::Bool, @photo : Proton::Types::Photo? = nil)
    end
  end
end
