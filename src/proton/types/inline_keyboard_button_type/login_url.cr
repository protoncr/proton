# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A button that opens a specified URL and automatically logs in in current user if they allowed to do that.
  # url [::String] HTTP URL to open.
  # id [::Int32] Unique button identifier.
  # forward_text [::String] If non-empty, new text of the button in forwarded messages.
  class InlineKeyboardButtonType::LoginUrl < Types::InlineKeyboardButtonType
    property url : ::String
    property id : ::Int32
    property forward_text : ::String

    def initialize(@url : ::String, @id : ::Int32, @forward_text : ::String)
    end
  end
end

