# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # New terms of service must be accepted by the user.
  # If the terms of service are declined, then the deleteAccount method should be called with the reason "Decline ToS
  #   update".
  class Update::TermsOfService < Types::Update
    include JSON::Serializable

    # Identifier of the terms of service
    property terms_of_service_id : ::String

    # The new terms of service
    property terms_of_service : Proton::Types::TermsOfService

    def initialize(@terms_of_service_id : ::String, @terms_of_service : Proton::Types::TermsOfService)
    end
  end
end
