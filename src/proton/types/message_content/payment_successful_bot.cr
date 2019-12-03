# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A payment has been completed; for bots only.
  class MessageContent::PaymentSuccessfulBot < Types::MessageContent
    include JSON::Serializable

    # Identifier of the message with the corresponding invoice; can be an identifier of a deleted message
    property invoice_message_id : ::Int32

    # Currency for price of the product
    property currency : ::String

    # Total price for the product, in the minimal quantity of the currency
    property total_amount : ::Int32

    # Invoice payload
    property invoice_payload : ::String

    # Telegram payment identifier
    property telegram_payment_charge_id : ::String

    # Provider payment identifier
    property provider_payment_charge_id : ::String

    # Identifier of the shipping option chosen by the user; may be empty if not applicable
    property shipping_option_id : ::String? = nil

    # Information about the order; may be null
    property order_info : Proton::Types::OrderInfo? = nil

    def initialize(@invoice_message_id : ::Int32, @currency : ::String, @total_amount : ::Int32, @invoice_payload : ::String, @telegram_payment_charge_id : ::String, @provider_payment_charge_id : ::String, @shipping_option_id : ::String? = nil, @order_info : Proton::Types::OrderInfo? = nil)
    end
  end
end
