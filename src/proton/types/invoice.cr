# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Product invoice.
  # currency [::String] ISO 4217 currency code.
  # price_parts [::Array(Proton::Types::LabeledPricePart)] A list of objects used to calculate the total price of the
  #   product.
  # is_test [::Bool] True, if the payment is a test payment.
  # need_name [::Bool] True, if the user's name is needed for payment.
  # need_phone_number [::Bool] True, if the user's phone number is needed for payment.
  # need_email_address [::Bool] True, if the user's email address is needed for payment.
  # need_shipping_address [::Bool] True, if the user's shipping address is needed for payment.
  # send_phone_number_to_provider [::Bool] True, if the user's phone number will be sent to the provider.
  # send_email_address_to_provider [::Bool] True, if the user's email address will be sent to the provider.
  # is_flexible [::Bool] True, if the total price depends on the shipping method.
  class Invoice < Types::Base
    property currency : ::String
    property price_parts : ::Array(Proton::Types::LabeledPricePart)
    property is_test : ::Bool
    property need_name : ::Bool
    property need_phone_number : ::Bool
    property need_email_address : ::Bool
    property need_shipping_address : ::Bool
    property send_phone_number_to_provider : ::Bool
    property send_email_address_to_provider : ::Bool
    property is_flexible : ::Bool

    def initialize(@currency : ::String, @price_parts : ::Array(Proton::Types::LabeledPricePart), @is_test : ::Bool, @need_name : ::Bool, @need_phone_number : ::Bool, @need_email_address : ::Bool, @need_shipping_address : ::Bool, @send_phone_number_to_provider : ::Bool, @send_email_address_to_provider : ::Bool, @is_flexible : ::Bool)
    end
  end
end

