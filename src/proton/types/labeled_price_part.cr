# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Portion of the price of a product (e.g., "delivery cost", "tax amount").
  class LabeledPricePart < Types::Base
    include JSON::Serializable

    # Label for this portion of the product price
    property label : ::String

    # Currency amount in minimal quantity of the currency
    property amount : ::Int32

    def initialize(@label : ::String, @amount : ::Int32)
    end
  end
end
