# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a single button in an inline keyboard.
  # text [::String] Text of the button.
  # type [Proton::Types::InlineKeyboardButtonType] Type of the button.
  class InlineKeyboardButton < Types::Base
    property text : ::String
    property type : Proton::Types::InlineKeyboardButtonType

    def initialize(@text : ::String, @type : Proton::Types::InlineKeyboardButtonType)
    end
  end
end

