# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A button that opens a specified URL.
  # url [::String] HTTP or tg:// URL to open.
  class InlineKeyboardButtonType::Url < Types::InlineKeyboardButtonType
    property url : ::String

    def initialize(@url : ::String)
    end
  end
end

