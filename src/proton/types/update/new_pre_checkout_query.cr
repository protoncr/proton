# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A new incoming pre-checkout query; for bots only.
  # Contains full information about a checkout.
  # id [::Int64] Unique query identifier.
  # sender_user_id [::Int32] Identifier of the user who sent the query.
  # currency [::String] Currency for the product price.
  # total_amount [::Int64] Total price for the product, in the minimal quantity of the currency.
  # invoice_payload [::String] Invoice payload.
  # shipping_option_id [::String, nil] Identifier of a shipping option chosen by the user; may be empty if not
  #   applicable.
  # order_info [Proton::Types::OrderInfo, nil] Information about the order; may be null.
  class Update::NewPreCheckoutQuery < Types::Update
    property id : ::Int64
    property sender_user_id : ::Int32
    property currency : ::String
    property total_amount : ::Int64
    property invoice_payload : ::String
    property shipping_option_id : ::String?
    property order_info : Proton::Types::OrderInfo?

    def initialize(@id : ::Int64, @sender_user_id : ::Int32, @currency : ::String, @total_amount : ::Int64, @invoice_payload : ::String, @shipping_option_id : ::String? = nil, @order_info : Proton::Types::OrderInfo? = nil)
    end
  end
end

