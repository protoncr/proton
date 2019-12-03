# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message with a location.
  class PushMessageContent::Location < Types::PushMessageContent
    include JSON::Serializable

    # True, if the location is live
    property is_live : ::Bool

    # True, if the message is a pinned message with the specified content
    property is_pinned : ::Bool

    def initialize(@is_live : ::Bool, @is_pinned : ::Bool)
    end
  end
end
