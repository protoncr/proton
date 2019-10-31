# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a Telegram Passport elements and corresponding errors.
  # elements [::Array(Proton::Types::PassportElement)] Telegram Passport elements.
  # errors [::Array(Proton::Types::PassportElementError)] Errors in the elements that are already available.
  class PassportElementsWithErrors < Types::Base
    property elements : ::Array(Proton::Types::PassportElement)
    property errors : ::Array(Proton::Types::PassportElementError)

    def initialize(@elements : ::Array(Proton::Types::PassportElement), @errors : ::Array(Proton::Types::PassportElementError))
    end
  end
end

