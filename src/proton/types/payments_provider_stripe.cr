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
    property need_country : ::Bool = false

    # True, if the user ZIP/postal code must be provided
    property need_postal_code : ::Bool = false

    # True, if the cardholder name must be provided
    property need_cardholder_name : ::Bool = false

    def initialize(@publishable_key : ::String, @need_country : ::Bool = false, @need_postal_code : ::Bool = false, @need_cardholder_name : ::Bool = false)
    end
  end
end
