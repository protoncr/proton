# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A Telegram Passport element containing the user's email address.
  # email_address [::String] Email address.
  class PassportElement::EmailAddress < Types::PassportElement
    property email_address : ::String

    def initialize(@email_address : ::String)
    end
  end
end

