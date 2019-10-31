# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Information about the authentication code that was sent.
  # phone_number [::String] A phone number that is being authenticated.
  # type [Proton::Types::AuthenticationCodeType] Describes the way the code was sent to the user.
  # next_type [Proton::Types::AuthenticationCodeType, nil] Describes the way the next code will be sent to the user;
  #   may be null.
  # timeout [::Int32] Timeout before the code should be re-sent, in seconds.
  class AuthenticationCodeInfo < Types::Base
    property phone_number : ::String
    property type : Proton::Types::AuthenticationCodeType
    property next_type : Proton::Types::AuthenticationCodeType?
    property timeout : ::Int32

    def initialize(@phone_number : ::String, @type : Proton::Types::AuthenticationCodeType, @timeout : ::Int32, @next_type : Proton::Types::AuthenticationCodeType? = nil)
    end
  end
end

