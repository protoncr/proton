# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A message with a user contact.
  # name [::String] Contact's name.
  # is_pinned [::Bool] True, if the message is a pinned message with the specified content.
  class PushMessageContent::Contact < Types::PushMessageContent
    property name : ::String
    property is_pinned : ::Bool

    def initialize(@name : ::String, @is_pinned : ::Bool)
    end
  end
end

