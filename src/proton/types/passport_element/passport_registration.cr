# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A Telegram Passport element containing the user's passport registration pages.
  class PassportElement::PassportRegistration < Types::PassportElement
    include JSON::Serializable

    # Passport registration pages
    property passport_registration : Proton::Types::PersonalDocument

    def initialize(@passport_registration : Proton::Types::PersonalDocument)
    end
  end
end
