# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A Telegram Passport element containing the user's temporary registration.
  # temporary_registration [Proton::Types::PersonalDocument] Temporary registration.
  class PassportElement::TemporaryRegistration < Types::PassportElement
    property temporary_registration : Proton::Types::PersonalDocument

    def initialize(@temporary_registration : Proton::Types::PersonalDocument)
    end
  end
end

