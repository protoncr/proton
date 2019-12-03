# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A Telegram Passport element to be saved containing the user's passport.
  class InputPassportElement::Passport < Types::InputPassportElement
    include JSON::Serializable

    # The passport to be saved
    property passport : Proton::Types::InputIdentityDocument

    def initialize(@passport : Proton::Types::InputIdentityDocument)
    end
  end
end
