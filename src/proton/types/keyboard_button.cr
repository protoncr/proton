# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Represents a single button in a bot keyboard.
  class KeyboardButton < Types::Base
    include JSON::Serializable

    # Text of the button
    property text : ::String

    # Type of the button
    property type : Proton::Types::KeyboardButtonType

    def initialize(@text : ::String, @type : Proton::Types::KeyboardButtonType)
    end
  end
end
