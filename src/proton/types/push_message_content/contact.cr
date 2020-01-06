# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message with a user contact.
  class PushMessageContent::Contact < Types::PushMessageContent
    include JSON::Serializable

    # Contact's name
    property name : ::String

    # True, if the message is a pinned message with the specified content
    property is_pinned : ::Bool = false

    def initialize(@name : ::String, @is_pinned : ::Bool = false)
    end
  end
end
