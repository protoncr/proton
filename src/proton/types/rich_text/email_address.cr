# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A rich text email link.
  class RichText::EmailAddress < Types::RichText
    include JSON::Serializable

    # Text
    property text : Proton::Types::RichText

    # Email address
    property email_address : ::String

    def initialize(@text : Proton::Types::RichText, @email_address : ::String)
    end
  end
end
