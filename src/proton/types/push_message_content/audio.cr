# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # An audio message.
  class PushMessageContent::Audio < Types::PushMessageContent
    include JSON::Serializable

    # True, if the message is a pinned message with the specified content
    property is_pinned : ::Bool

    # Message content; may be null
    property audio : Proton::Types::Audio? = nil

    def initialize(@is_pinned : ::Bool, @audio : Proton::Types::Audio? = nil)
    end
  end
end
