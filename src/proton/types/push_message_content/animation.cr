# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # An animation message (GIF-style)..
  # animation [Proton::Types::Animation, nil] Message content; may be null.
  # caption [::String] Animation caption.
  # is_pinned [::Bool] True, if the message is a pinned message with the specified content.
  class PushMessageContent::Animation < Types::PushMessageContent
    property animation : Proton::Types::Animation?
    property caption : ::String
    property is_pinned : ::Bool

    def initialize(@caption : ::String, @is_pinned : ::Bool, @animation : Proton::Types::Animation? = nil)
    end
  end
end

