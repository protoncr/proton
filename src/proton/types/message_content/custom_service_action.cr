# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A non-standard action has happened in the chat.
  # text [::String] Message text to be shown in the chat.
  class MessageContent::CustomServiceAction < Types::MessageContent
    property text : ::String

    def initialize(@text : ::String)
    end
  end
end

