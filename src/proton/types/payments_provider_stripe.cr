# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Stripe payment provider.
  class PaymentsProviderStripe < Types::Base
    include JSON::Serializable

    # Stripe API publishable key
    property publishable_key : ::String

    # True, if the user country must be provided
    property need_country : ::Bool

    # True, if the user ZIP/postal code must be provided
    property need_postal_code : ::Bool

    # True, if the cardholder name must be provided
    property need_cardholder_name : ::Bool

    def initialize(@publishable_key : ::String, @need_country : ::Bool, @need_postal_code : ::Bool, @need_cardholder_name : ::Bool)
    end
  end
end
