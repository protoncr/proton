# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A Telegram Passport element to be saved containing the user's temporary registration.
  class InputPassportElement::TemporaryRegistration < Types::InputPassportElement
    include JSON::Serializable

    # The temporary registration document to be saved
    property temporary_registration : Proton::Types::InputPersonalDocument

    def initialize(@temporary_registration : Proton::Types::InputPersonalDocument)
    end
  end
end
