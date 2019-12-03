# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A Telegram Passport element containing the user's address.
  class PassportElement::Address < Types::PassportElement
    include JSON::Serializable

    # Address
    property address : Proton::Types::Address

    def initialize(@address : Proton::Types::Address)
    end
  end
end
