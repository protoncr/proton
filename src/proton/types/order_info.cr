# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Order information.
  class OrderInfo < Types::Base
    include JSON::Serializable

    # Name of the user
    property name : ::String

    # Phone number of the user
    property phone_number : ::String

    # Email address of the user
    property email_address : ::String

    # Shipping address for this order; may be null
    property shipping_address : Proton::Types::Address? = nil

    def initialize(@name : ::String, @phone_number : ::String, @email_address : ::String, @shipping_address : Proton::Types::Address? = nil)
    end
  end
end
