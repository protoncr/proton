# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A Telegram Passport element to be saved containing the user's address.
  # address [Proton::Types::Address] The address to be saved.
  class InputPassportElement::Address < Types::InputPassportElement
    property address : Proton::Types::Address

    def initialize(@address : Proton::Types::Address)
    end
  end
end

