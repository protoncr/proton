# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about an invoice payment form.
  class PaymentForm < Types::Base
    include JSON::Serializable

    # Full information of the invoice
    property invoice : Proton::Types::Invoice

    # Payment form URL
    property url : ::String

    # True, if the user can choose to save credentials
    property can_save_credentials : ::Bool

    # True, if the user will be able to save credentials protected by a password they set up
    property need_password : ::Bool

    # Contains information about the payment provider, if available, to support it natively without the need for opening the URL; may be null
    property payments_provider : Proton::Types::PaymentsProviderStripe? = nil

    # Saved server-side order information; may be null
    property saved_order_info : Proton::Types::OrderInfo? = nil

    # Contains information about saved card credentials; may be null
    property saved_credentials : Proton::Types::SavedCredentials? = nil

    def initialize(@invoice : Proton::Types::Invoice, @url : ::String, @can_save_credentials : ::Bool, @need_password : ::Bool, @payments_provider : Proton::Types::PaymentsProviderStripe? = nil, @saved_order_info : Proton::Types::OrderInfo? = nil, @saved_credentials : Proton::Types::SavedCredentials? = nil)
    end
  end
end
