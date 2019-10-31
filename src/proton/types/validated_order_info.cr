# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a temporary identifier of validated order information, which is stored for one hour.
  # Also contains the available shipping options.
  # order_info_id [::String] Temporary identifier of the order information.
  # shipping_options [::Array(Proton::Types::ShippingOption)] Available shipping options.
  class ValidatedOrderInfo < Types::Base
    property order_info_id : ::String
    property shipping_options : ::Array(Proton::Types::ShippingOption)

    def initialize(@order_info_id : ::String, @shipping_options : ::Array(Proton::Types::ShippingOption))
    end
  end
end

