# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # An audio message.
  class PushMessageContent::Audio < Types::PushMessageContent
    include JSON::Serializable

    # Message content; may be null
    property audio : Proton::Types::Audio? = nil

    # True, if the message is a pinned message with the specified content
    property is_pinned : ::Bool = false

    def initialize(@audio : Proton::Types::Audio? = nil, @is_pinned : ::Bool = false)
    end
  end
end
