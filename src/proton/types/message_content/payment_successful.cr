# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A payment has been completed.
  # invoice_message_id [::Int64] Identifier of the message with the corresponding invoice; can be an identifier of a
  #   deleted message.
  # currency [::String] Currency for the price of the product.
  # total_amount [::Int64] Total price for the product, in the minimal quantity of the currency.
  class MessageContent::PaymentSuccessful < Types::MessageContent
    property invoice_message_id : ::Int64
    property currency : ::String
    property total_amount : ::Int64

    def initialize(@invoice_message_id : ::Int64, @currency : ::String, @total_amount : ::Int64)
    end
  end
end

