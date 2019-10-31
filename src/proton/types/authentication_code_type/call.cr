# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # An authentication code is delivered via a phone call to the specified phone number.
  # length [::Int32] Length of the code.
  class AuthenticationCodeType::Call < Types::AuthenticationCodeType
    property length : ::Int32

    def initialize(@length : ::Int32)
    end
  end
end

