# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A Telegram Passport element containing the user's address.
  # address [Proton::Types::Address] Address.
  class PassportElement::Address < Types::PassportElement
    property address : Proton::Types::Address

    def initialize(@address : Proton::Types::Address)
    end
  end
end

