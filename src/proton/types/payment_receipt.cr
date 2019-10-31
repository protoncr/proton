# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a successful payment.
  # date [::Int32] Point in time (Unix timestamp) when the payment was made.
  # payments_provider_user_id [::Int32] User identifier of the payment provider bot.
  # invoice [Proton::Types::Invoice] Contains information about the invoice.
  # order_info [Proton::Types::OrderInfo, nil] Contains order information; may be null.
  # shipping_option [Proton::Types::ShippingOption, nil] Chosen shipping option; may be null.
  # credentials_title [::String] Title of the saved credentials.
  class PaymentReceipt < Types::Base
    property date : ::Int32
    property payments_provider_user_id : ::Int32
    property invoice : Proton::Types::Invoice
    property order_info : Proton::Types::OrderInfo?
    property shipping_option : Proton::Types::ShippingOption?
    property credentials_title : ::String

    def initialize(@date : ::Int32, @payments_provider_user_id : ::Int32, @invoice : Proton::Types::Invoice, @credentials_title : ::String, @order_info : Proton::Types::OrderInfo? = nil, @shipping_option : Proton::Types::ShippingOption? = nil)
    end
  end
end

