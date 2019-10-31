# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains a description of the required Telegram Passport element that was requested by a service.
  # suitable_elements [::Array(Proton::Types::PassportSuitableElement)] List of Telegram Passport elements any of which
  #   is enough to provide.
  class PassportRequiredElement < Types::Base
    property suitable_elements : ::Array(Proton::Types::PassportSuitableElement)

    def initialize(@suitable_elements : ::Array(Proton::Types::PassportSuitableElement))
    end
  end
end

