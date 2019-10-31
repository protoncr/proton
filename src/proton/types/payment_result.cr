# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains the result of a payment request.
  # success [::Bool] True, if the payment request was successful; otherwise the verification_url will be not empty.
  # verification_url [::String] URL for additional payment credentials verification.
  class PaymentResult < Types::Base
    property success : ::Bool
    property verification_url : ::String

    def initialize(@success : ::Bool, @verification_url : ::String)
    end
  end
end

