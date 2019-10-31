# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A rich text phone number.
  # text [Proton::Types::RichText] Text.
  # phone_number [::String] Phone number.
  class RichText::PhoneNumber < Types::RichText
    property text : Proton::Types::RichText
    property phone_number : ::String

    def initialize(@text : Proton::Types::RichText, @phone_number : ::String)
    end
  end
end

