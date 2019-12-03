# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A Telegram Passport element to be saved containing the user's internal passport.
  class InputPassportElement::InternalPassport < Types::InputPassportElement
    include JSON::Serializable

    # The internal passport to be saved
    property internal_passport : Proton::Types::InputIdentityDocument

    def initialize(@internal_passport : Proton::Types::InputIdentityDocument)
    end
  end
end
