# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains the result of a payment request.
  class PaymentResult < Types::Base
    include JSON::Serializable

    # URL for additional payment credentials verification
    property verification_url : ::String

    # True, if the payment request was successful; otherwise the verification_url will be not empty
    property success : ::Bool = false

    def initialize(@verification_url : ::String, @success : ::Bool = false)
    end
  end
end
