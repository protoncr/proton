# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A Telegram Passport element to be saved containing the user's identity card.
  class InputPassportElement::IdentityCard < Types::InputPassportElement
    include JSON::Serializable

    # The identity card to be saved
    property identity_card : Proton::Types::InputIdentityDocument

    def initialize(@identity_card : Proton::Types::InputIdentityDocument)
    end
  end
end
