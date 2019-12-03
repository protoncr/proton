# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A Telegram Passport element to be saved containing the user's address.
  class InputPassportElement::Address < Types::InputPassportElement
    include JSON::Serializable

    # The address to be saved
    property address : Proton::Types::Address

    def initialize(@address : Proton::Types::Address)
    end
  end
end
