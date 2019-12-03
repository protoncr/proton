# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a Telegram Passport elements and corresponding errors.
  class PassportElementsWithErrors < Types::Base
    include JSON::Serializable

    # Telegram Passport elements
    property elements : ::Array(Proton::Types::PassportElement)

    # Errors in the elements that are already available
    property errors : ::Array(Proton::Types::PassportElementError)

    def initialize(@elements : ::Array(Proton::Types::PassportElement), @errors : ::Array(Proton::Types::PassportElementError))
    end
  end
end
