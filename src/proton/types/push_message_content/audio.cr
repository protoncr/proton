# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # An audio message.
  # audio [Proton::Types::Audio, nil] Message content; may be null.
  # is_pinned [::Bool] True, if the message is a pinned message with the specified content.
  class PushMessageContent::Audio < Types::PushMessageContent
    property audio : Proton::Types::Audio?
    property is_pinned : ::Bool

    def initialize(@is_pinned : ::Bool, @audio : Proton::Types::Audio? = nil)
    end
  end
end

