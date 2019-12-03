# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Product invoice.
  class Invoice < Types::Base
    include JSON::Serializable

    # ISO 4217 currency code
    property currency : ::String

    # A list of objects used to calculate the total price of the product
    property price_parts : ::Array(Proton::Types::LabeledPricePart)

    # True, if the payment is a test payment
    property is_test : ::Bool

    # True, if the user's name is needed for payment
    property need_name : ::Bool

    # True, if the user's phone number is needed for payment
    property need_phone_number : ::Bool

    # True, if the user's email address is needed for payment
    property need_email_address : ::Bool

    # True, if the user's shipping address is needed for payment
    property need_shipping_address : ::Bool

    # True, if the user's phone number will be sent to the provider
    property send_phone_number_to_provider : ::Bool

    # True, if the user's email address will be sent to the provider
    property send_email_address_to_provider : ::Bool

    # True, if the total price depends on the shipping method
    property is_flexible : ::Bool

    def initialize(@currency : ::String, @price_parts : ::Array(Proton::Types::LabeledPricePart), @is_test : ::Bool, @need_name : ::Bool, @need_phone_number : ::Bool, @need_email_address : ::Bool, @need_shipping_address : ::Bool, @send_phone_number_to_provider : ::Bool, @send_email_address_to_provider : ::Bool, @is_flexible : ::Bool)
    end
  end
end
