# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Order information.
  # name [::String] Name of the user.
  # phone_number [::String] Phone number of the user.
  # email_address [::String] Email address of the user.
  # shipping_address [Proton::Types::Address, nil] Shipping address for this order; may be null.
  class OrderInfo < Types::Base
    property name : ::String
    property phone_number : ::String
    property email_address : ::String
    property shipping_address : Proton::Types::Address?

    def initialize(@name : ::String, @phone_number : ::String, @email_address : ::String, @shipping_address : Proton::Types::Address? = nil)
    end
  end
end

