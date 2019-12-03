# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A rich text phone number.
  class RichText::PhoneNumber < Types::RichText
    include JSON::Serializable

    # Text
    property text : Proton::Types::RichText

    # Phone number
    property phone_number : ::String

    def initialize(@text : Proton::Types::RichText, @phone_number : ::String)
    end
  end
end
