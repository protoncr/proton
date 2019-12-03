# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Contains an inline keyboard layout.
  class ReplyMarkup::InlineKeyboard < Types::ReplyMarkup
    include JSON::Serializable

    # A list of rows of inline keyboard buttons
    property rows : ::Array(::Array(Proton::Types::InlineKeyboardButton))

    def initialize(@rows : ::Array(::Array(Proton::Types::InlineKeyboardButton)))
    end
  end
end
