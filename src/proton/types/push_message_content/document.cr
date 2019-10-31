# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A document message (a general file).
  # document [Proton::Types::Document, nil] Message content; may be null.
  # is_pinned [::Bool] True, if the message is a pinned message with the specified content.
  class PushMessageContent::Document < Types::PushMessageContent
    property document : Proton::Types::Document?
    property is_pinned : ::Bool

    def initialize(@is_pinned : ::Bool, @document : Proton::Types::Document? = nil)
    end
  end
end

