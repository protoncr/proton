# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a Telegram Passport authorization form that was requested.
  # id [::Int32] Unique identifier of the authorization form.
  # required_elements [::Array(Proton::Types::PassportRequiredElement)] Information about the Telegram Passport
  #   elements that need to be provided to complete the form.
  # privacy_policy_url [::String, nil] URL for the privacy policy of the service; may be empty.
  class PassportAuthorizationForm < Types::Base
    property id : ::Int32
    property required_elements : ::Array(Proton::Types::PassportRequiredElement)
    property privacy_policy_url : ::String?

    def initialize(@id : ::Int32, @required_elements : ::Array(Proton::Types::PassportRequiredElement), @privacy_policy_url : ::String? = nil)
    end
  end
end

