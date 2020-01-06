# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message with an invoice from a bot.
  class MessageContent::Invoice < Types::MessageContent
    include JSON::Serializable

    # Product title
    property title : ::String

    # Product description
    property description : ::String

    # Currency for the product price
    property currency : ::String

    # Product total price in the minimal quantity of the currency
    property total_amount : ::Int64

    # Unique invoice bot start_parameter. To share an invoice use the URL https://t.me/{bot_username}?start={start_parameter}
    property start_parameter : ::String

    # The identifier of the message with the receipt, after the product has been purchased
    property receipt_message_id : ::Int64

    # Product photo; may be null
    property photo : Proton::Types::Photo? = nil

    # True, if the invoice is a test invoice
    property is_test : ::Bool = false

    # True, if the shipping address should be specified
    property need_shipping_address : ::Bool = false

    def initialize(@title : ::String, @description : ::String, @currency : ::String, @total_amount : ::Int64, @start_parameter : ::String, @receipt_message_id : ::Int64, @photo : Proton::Types::Photo? = nil, @is_test : ::Bool = false, @need_shipping_address : ::Bool = false)
    end
  end
end
