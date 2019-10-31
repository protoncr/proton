# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Stripe payment provider.
  # publishable_key [::String] Stripe API publishable key.
  # need_country [::Bool] True, if the user country must be provided.
  # need_postal_code [::Bool] True, if the user ZIP/postal code must be provided.
  # need_cardholder_name [::Bool] True, if the cardholder name must be provided.
  class PaymentsProviderStripe < Types::Base
    property publishable_key : ::String
    property need_country : ::Bool
    property need_postal_code : ::Bool
    property need_cardholder_name : ::Bool

    def initialize(@publishable_key : ::String, @need_country : ::Bool, @need_postal_code : ::Bool, @need_cardholder_name : ::Bool)
    end
  end
end

