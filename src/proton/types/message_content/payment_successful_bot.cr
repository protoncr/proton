# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A payment has been completed; for bots only.
  # invoice_message_id [::Int64] Identifier of the message with the corresponding invoice; can be an identifier of a
  #   deleted message.
  # currency [::String] Currency for price of the product.
  # total_amount [::Int64] Total price for the product, in the minimal quantity of the currency.
  # invoice_payload [::String] Invoice payload.
  # shipping_option_id [::String, nil] Identifier of the shipping option chosen by the user; may be empty if not
  #   applicable.
  # order_info [Proton::Types::OrderInfo, nil] Information about the order; may be null.
  # telegram_payment_charge_id [::String] Telegram payment identifier.
  # provider_payment_charge_id [::String] Provider payment identifier.
  class MessageContent::PaymentSuccessfulBot < Types::MessageContent
    property invoice_message_id : ::Int64
    property currency : ::String
    property total_amount : ::Int64
    property invoice_payload : ::String
    property shipping_option_id : ::String?
    property order_info : Proton::Types::OrderInfo?
    property telegram_payment_charge_id : ::String
    property provider_payment_charge_id : ::String

    def initialize(@invoice_message_id : ::Int64, @currency : ::String, @total_amount : ::Int64, @invoice_payload : ::String, @telegram_payment_charge_id : ::String, @provider_payment_charge_id : ::String, @shipping_option_id : ::String? = nil, @order_info : Proton::Types::OrderInfo? = nil)
    end
  end
end

