# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Portion of the price of a product (e.g., "delivery cost", "tax amount").
  # label [::String] Label for this portion of the product price.
  # amount [::Int64] Currency amount in minimal quantity of the currency.
  class LabeledPricePart < Types::Base
    property label : ::String
    property amount : ::Int64

    def initialize(@label : ::String, @amount : ::Int64)
    end
  end
end

