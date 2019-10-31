# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A Telegram Passport element containing the user's internal passport.
  # internal_passport [Proton::Types::IdentityDocument] Internal passport.
  class PassportElement::InternalPassport < Types::PassportElement
    property internal_passport : Proton::Types::IdentityDocument

    def initialize(@internal_passport : Proton::Types::IdentityDocument)
    end
  end
end

