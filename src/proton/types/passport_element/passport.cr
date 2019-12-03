# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A Telegram Passport element containing the user's passport.
  class PassportElement::Passport < Types::PassportElement
    include JSON::Serializable

    # Passport
    property passport : Proton::Types::IdentityDocument

    def initialize(@passport : Proton::Types::IdentityDocument)
    end
  end
end
