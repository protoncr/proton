# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A general message with hidden content.
  class PushMessageContent::Hidden < Types::PushMessageContent
    include JSON::Serializable

    # True, if the message is a pinned message with the specified content
    property is_pinned : ::Bool

    def initialize(@is_pinned : ::Bool)
    end
  end
end
