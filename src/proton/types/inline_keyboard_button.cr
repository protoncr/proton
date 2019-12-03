# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a single button in an inline keyboard.
  class InlineKeyboardButton < Types::Base
    include JSON::Serializable

    # Text of the button
    property text : ::String

    # Type of the button
    property type : Proton::Types::InlineKeyboardButtonType

    def initialize(@text : ::String, @type : Proton::Types::InlineKeyboardButtonType)
    end
  end
end
