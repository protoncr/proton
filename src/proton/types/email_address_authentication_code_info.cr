# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Information about the email address authentication code that was sent.
  # email_address_pattern [::String] Pattern of the email address to which an authentication code was sent.
  # length [::Int32] Length of the code; 0 if unknown.
  class EmailAddressAuthenticationCodeInfo < Types::Base
    property email_address_pattern : ::String
    property length : ::Int32

    def initialize(@email_address_pattern : ::String, @length : ::Int32)
    end
  end
end

