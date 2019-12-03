# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A Telegram Passport element to be saved containing the user's driver license.
  class InputPassportElement::DriverLicense < Types::InputPassportElement
    include JSON::Serializable

    # The driver license to be saved
    property driver_license : Proton::Types::InputIdentityDocument

    def initialize(@driver_license : Proton::Types::InputIdentityDocument)
    end
  end
end
