# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Information about the authentication code that was sent.
  class AuthenticationCodeInfo < Types::Base
    include JSON::Serializable

    # A phone number that is being authenticated
    property phone_number : ::String

    # Describes the way the code was sent to the user
    property type : Proton::Types::AuthenticationCodeType

    # Timeout before the code should be re-sent, in seconds
    property timeout : ::Int32

    # Describes the way the next code will be sent to the user; may be null
    property next_type : Proton::Types::AuthenticationCodeType? = nil

    def initialize(@phone_number : ::String, @type : Proton::Types::AuthenticationCodeType, @timeout : ::Int32, @next_type : Proton::Types::AuthenticationCodeType? = nil)
    end
  end
end
