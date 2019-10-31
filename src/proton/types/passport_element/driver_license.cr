# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A Telegram Passport element containing the user's driver license.
  # driver_license [Proton::Types::IdentityDocument] Driver license.
  class PassportElement::DriverLicense < Types::PassportElement
    property driver_license : Proton::Types::IdentityDocument

    def initialize(@driver_license : Proton::Types::IdentityDocument)
    end
  end
end

