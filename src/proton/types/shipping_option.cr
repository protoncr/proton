# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # One shipping option.
  class ShippingOption < Types::Base
    include JSON::Serializable

    # Shipping option identifier
    property id : ::String

    # Option title
    property title : ::String

    # A list of objects used to calculate the total shipping costs
    property price_parts : ::Array(Proton::Types::LabeledPricePart)

    def initialize(@id : ::String, @title : ::String, @price_parts : ::Array(Proton::Types::LabeledPricePart))
    end
  end
end
