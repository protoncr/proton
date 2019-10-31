# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A photo message.
  # photo [Proton::Types::Photo, nil] Message content; may be null.
  # caption [::String] Photo caption.
  # is_secret [::Bool] True, if the photo is secret.
  # is_pinned [::Bool] True, if the message is a pinned message with the specified content.
  class PushMessageContent::Photo < Types::PushMessageContent
    property photo : Proton::Types::Photo?
    property caption : ::String
    property is_secret : ::Bool
    property is_pinned : ::Bool

    def initialize(@caption : ::String, @is_secret : ::Bool, @is_pinned : ::Bool, @photo : Proton::Types::Photo? = nil)
    end
  end
end

