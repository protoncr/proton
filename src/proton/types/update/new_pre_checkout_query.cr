# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A new incoming pre-checkout query; for bots only.
  # Contains full information about a checkout.
  class Update::NewPreCheckoutQuery < Types::Update
    include JSON::Serializable

    # Unique query identifier
    property id : ::String

    # Identifier of the user who sent the query
    property sender_user_id : ::Int32

    # Currency for the product price
    property currency : ::String

    # Total price for the product, in the minimal quantity of the currency
    property total_amount : ::Int32

    # Invoice payload
    property invoice_payload : ::String

    # Identifier of a shipping option chosen by the user; may be empty if not applicable
    property shipping_option_id : ::String? = nil

    # Information about the order; may be null
    property order_info : Proton::Types::OrderInfo? = nil

    def initialize(@id : ::String, @sender_user_id : ::Int32, @currency : ::String, @total_amount : ::Int32, @invoice_payload : ::String, @shipping_option_id : ::String? = nil, @order_info : Proton::Types::OrderInfo? = nil)
    end
  end
end
