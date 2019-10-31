# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A message with an invoice from a bot.
  # title [::String] Product title.
  # description [::String] Product description.
  # photo [Proton::Types::Photo, nil] Product photo; may be null.
  # currency [::String] Currency for the product price.
  # total_amount [::Int64] Product total price in the minimal quantity of the currency.
  # start_parameter [::String] Unique invoice bot start_parameter.
  #   To share an invoice use the URL https://t.me/{bot_username}?start={start_parameter}.
  # is_test [::Bool] True, if the invoice is a test invoice.
  # need_shipping_address [::Bool] True, if the shipping address should be specified.
  # receipt_message_id [::Int64] The identifier of the message with the receipt, after the product has been purchased.
  class MessageContent::Invoice < Types::MessageContent
    property title : ::String
    property description : ::String
    property photo : Proton::Types::Photo?
    property currency : ::String
    property total_amount : ::Int64
    property start_parameter : ::String
    property is_test : ::Bool
    property need_shipping_address : ::Bool
    property receipt_message_id : ::Int64

    def initialize(@title : ::String, @description : ::String, @currency : ::String, @total_amount : ::Int64, @start_parameter : ::String, @is_test : ::Bool, @need_shipping_address : ::Bool, @receipt_message_id : ::Int64, @photo : Proton::Types::Photo? = nil)
    end
  end
end

