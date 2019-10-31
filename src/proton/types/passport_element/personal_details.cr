# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A Telegram Passport element containing the user's personal details.
  # personal_details [Proton::Types::PersonalDetails] Personal details of the user.
  class PassportElement::PersonalDetails < Types::PassportElement
    property personal_details : Proton::Types::PersonalDetails

    def initialize(@personal_details : Proton::Types::PersonalDetails)
    end
  end
end

