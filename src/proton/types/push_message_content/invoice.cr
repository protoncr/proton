# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message with an invoice from a bot.
  class PushMessageContent::Invoice < Types::PushMessageContent
    include JSON::Serializable

    # Product price
    property price : ::String

    # True, if the message is a pinned message with the specified content
    property is_pinned : ::Bool = false

    def initialize(@price : ::String, @is_pinned : ::Bool = false)
    end
  end
end
