# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a single button in a bot keyboard.
  # text [::String] Text of the button.
  # type [Proton::Types::KeyboardButtonType] Type of the button.
  class KeyboardButton < Types::Base
    property text : ::String
    property type : Proton::Types::KeyboardButtonType

    def initialize(@text : ::String, @type : Proton::Types::KeyboardButtonType)
    end
  end
end

