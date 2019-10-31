# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A message with a location.
  # is_live [::Bool] True, if the location is live.
  # is_pinned [::Bool] True, if the message is a pinned message with the specified content.
  class PushMessageContent::Location < Types::PushMessageContent
    property is_live : ::Bool
    property is_pinned : ::Bool

    def initialize(@is_live : ::Bool, @is_pinned : ::Bool)
    end
  end
end

