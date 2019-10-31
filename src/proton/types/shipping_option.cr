# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # One shipping option.
  # id [::String] Shipping option identifier.
  # title [::String] Option title.
  # price_parts [::Array(Proton::Types::LabeledPricePart)] A list of objects used to calculate the total shipping
  #   costs.
  class ShippingOption < Types::Base
    property id : ::String
    property title : ::String
    property price_parts : ::Array(Proton::Types::LabeledPricePart)

    def initialize(@id : ::String, @title : ::String, @price_parts : ::Array(Proton::Types::LabeledPricePart))
    end
  end
end

