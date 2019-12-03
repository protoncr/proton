# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A payment has been completed.
  class MessageContent::PaymentSuccessful < Types::MessageContent
    include JSON::Serializable

    # Identifier of the message with the corresponding invoice; can be an identifier of a deleted message
    property invoice_message_id : ::Int32

    # Currency for the price of the product
    property currency : ::String

    # Total price for the product, in the minimal quantity of the currency
    property total_amount : ::Int32

    def initialize(@invoice_message_id : ::Int32, @currency : ::String, @total_amount : ::Int32)
    end
  end
end
