# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Contains an inline keyboard layout.
  # rows [::Array(::Array(Proton::Types::InlineKeyboardButton))] A list of rows of inline keyboard buttons.
  class ReplyMarkup::InlineKeyboard < Types::ReplyMarkup
    property rows : ::Array(::Array(Proton::Types::InlineKeyboardButton))

    def initialize(@rows : ::Array(::Array(Proton::Types::InlineKeyboardButton)))
    end
  end
end

