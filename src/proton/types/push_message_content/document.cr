# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A document message (a general file).
  class PushMessageContent::Document < Types::PushMessageContent
    include JSON::Serializable

    # True, if the message is a pinned message with the specified content
    property is_pinned : ::Bool

    # Message content; may be null
    property document : Proton::Types::Document? = nil

    def initialize(@is_pinned : ::Bool, @document : Proton::Types::Document? = nil)
    end
  end
end
