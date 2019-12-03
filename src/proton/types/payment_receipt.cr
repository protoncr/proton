# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a successful payment.
  class PaymentReceipt < Types::Base
    include JSON::Serializable

    # Point in time (Unix timestamp) when the payment was made
    property date : ::Int32

    # User identifier of the payment provider bot
    property payments_provider_user_id : ::Int32

    # Contains information about the invoice
    property invoice : Proton::Types::Invoice

    # Title of the saved credentials
    property credentials_title : ::String

    # Contains order information; may be null
    property order_info : Proton::Types::OrderInfo? = nil

    # Chosen shipping option; may be null
    property shipping_option : Proton::Types::ShippingOption? = nil

    def initialize(@date : ::Int32, @payments_provider_user_id : ::Int32, @invoice : Proton::Types::Invoice, @credentials_title : ::String, @order_info : Proton::Types::OrderInfo? = nil, @shipping_option : Proton::Types::ShippingOption? = nil)
    end
  end
end
