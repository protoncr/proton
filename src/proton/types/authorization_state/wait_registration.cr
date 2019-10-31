# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # The user is unregistered and need to accept terms of service and enter their first name and last name to finish
  #   registration.
  # terms_of_service [Proton::Types::TermsOfService] Telegram terms of service.
  class AuthorizationState::WaitRegistration < Types::AuthorizationState
    property terms_of_service : Proton::Types::TermsOfService

    def initialize(@terms_of_service : Proton::Types::TermsOfService)
    end
  end
end

