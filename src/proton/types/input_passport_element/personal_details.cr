# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A Telegram Passport element to be saved containing the user's personal details.
  class InputPassportElement::PersonalDetails < Types::InputPassportElement
    include JSON::Serializable

    # Personal details of the user
    property personal_details : Proton::Types::PersonalDetails

    def initialize(@personal_details : Proton::Types::PersonalDetails)
    end
  end
end
