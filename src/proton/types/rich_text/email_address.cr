# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A rich text email link.
  # text [Proton::Types::RichText] Text.
  # email_address [::String] Email address.
  class RichText::EmailAddress < Types::RichText
    property text : Proton::Types::RichText
    property email_address : ::String

    def initialize(@text : Proton::Types::RichText, @email_address : ::String)
    end
  end
end

