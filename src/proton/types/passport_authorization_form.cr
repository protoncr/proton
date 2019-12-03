# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a Telegram Passport authorization form that was requested.
  class PassportAuthorizationForm < Types::Base
    include JSON::Serializable

    # Unique identifier of the authorization form
    property id : ::Int32

    # Information about the Telegram Passport elements that need to be provided to complete the form
    property required_elements : ::Array(Proton::Types::PassportRequiredElement)

    # URL for the privacy policy of the service; may be empty
    property privacy_policy_url : ::String? = nil

    def initialize(@id : ::Int32, @required_elements : ::Array(Proton::Types::PassportRequiredElement), @privacy_policy_url : ::String? = nil)
    end
  end
end
