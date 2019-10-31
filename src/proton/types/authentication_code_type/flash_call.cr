# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # An authentication code is delivered by an immediately cancelled call to the specified phone number.
  # The number from which the call was made is the code.
  # pattern [::String] Pattern of the phone number from which the call will be made.
  class AuthenticationCodeType::FlashCall < Types::AuthenticationCodeType
    property pattern : ::String

    def initialize(@pattern : ::String)
    end
  end
end

