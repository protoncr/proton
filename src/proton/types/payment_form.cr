# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about an invoice payment form.
  # invoice [Proton::Types::Invoice] Full information of the invoice.
  # url [::String] Payment form URL.
  # payments_provider [Proton::Types::PaymentsProviderStripe, nil] Contains information about the payment provider, if
  #   available, to support it natively without the need for opening the URL; may be null.
  # saved_order_info [Proton::Types::OrderInfo, nil] Saved server-side order information; may be null.
  # saved_credentials [Proton::Types::SavedCredentials, nil] Contains information about saved card credentials; may be
  #   null.
  # can_save_credentials [::Bool] True, if the user can choose to save credentials.
  # need_password [::Bool] True, if the user will be able to save credentials protected by a password they set up.
  class PaymentForm < Types::Base
    property invoice : Proton::Types::Invoice
    property url : ::String
    property payments_provider : Proton::Types::PaymentsProviderStripe?
    property saved_order_info : Proton::Types::OrderInfo?
    property saved_credentials : Proton::Types::SavedCredentials?
    property can_save_credentials : ::Bool
    property need_password : ::Bool

    def initialize(@invoice : Proton::Types::Invoice, @url : ::String, @can_save_credentials : ::Bool, @need_password : ::Bool, @payments_provider : Proton::Types::PaymentsProviderStripe? = nil, @saved_order_info : Proton::Types::OrderInfo? = nil, @saved_credentials : Proton::Types::SavedCredentials? = nil)
    end
  end
end

