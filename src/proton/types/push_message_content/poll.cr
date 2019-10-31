# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A message with a poll.
  # question [::String] Poll question.
  # is_pinned [::Bool] True, if the message is a pinned message with the specified content.
  class PushMessageContent::Poll < Types::PushMessageContent
    property question : ::String
    property is_pinned : ::Bool

    def initialize(@question : ::String, @is_pinned : ::Bool)
    end
  end
end

