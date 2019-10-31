# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A message with an invoice from a bot.
  # price [::String] Product price.
  # is_pinned [::Bool] True, if the message is a pinned message with the specified content.
  class PushMessageContent::Invoice < Types::PushMessageContent
    property price : ::String
    property is_pinned : ::Bool

    def initialize(@price : ::String, @is_pinned : ::Bool)
    end
  end
end

