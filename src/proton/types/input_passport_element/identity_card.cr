# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A Telegram Passport element to be saved containing the user's identity card.
  # identity_card [Proton::Types::InputIdentityDocument] The identity card to be saved.
  class InputPassportElement::IdentityCard < Types::InputPassportElement
    property identity_card : Proton::Types::InputIdentityDocument

    def initialize(@identity_card : Proton::Types::InputIdentityDocument)
    end
  end
end

