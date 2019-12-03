# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message with a poll.
  class PushMessageContent::Poll < Types::PushMessageContent
    include JSON::Serializable

    # Poll question
    property question : ::String

    # True, if the message is a pinned message with the specified content
    property is_pinned : ::Bool

    def initialize(@question : ::String, @is_pinned : ::Bool)
    end
  end
end
