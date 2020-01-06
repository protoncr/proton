# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A document message (a general file).
  class PushMessageContent::Document < Types::PushMessageContent
    include JSON::Serializable

    # Message content; may be null
    property document : Proton::Types::Document? = nil

    # True, if the message is a pinned message with the specified content
    property is_pinned : ::Bool = false

    def initialize(@document : Proton::Types::Document? = nil, @is_pinned : ::Bool = false)
    end
  end
end
