# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A Telegram Passport element to be saved containing the user's internal passport.
  # internal_passport [Proton::Types::InputIdentityDocument] The internal passport to be saved.
  class InputPassportElement::InternalPassport < Types::InputPassportElement
    property internal_passport : Proton::Types::InputIdentityDocument

    def initialize(@internal_passport : Proton::Types::InputIdentityDocument)
    end
  end
end

