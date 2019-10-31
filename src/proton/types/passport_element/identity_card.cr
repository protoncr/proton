# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A Telegram Passport element containing the user's identity card.
  # identity_card [Proton::Types::IdentityDocument] Identity card.
  class PassportElement::IdentityCard < Types::PassportElement
    property identity_card : Proton::Types::IdentityDocument

    def initialize(@identity_card : Proton::Types::IdentityDocument)
    end
  end
end

