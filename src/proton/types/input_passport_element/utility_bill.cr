# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A Telegram Passport element to be saved containing the user's utility bill.
  class InputPassportElement::UtilityBill < Types::InputPassportElement
    include JSON::Serializable

    # The utility bill to be saved
    property utility_bill : Proton::Types::InputPersonalDocument

    def initialize(@utility_bill : Proton::Types::InputPersonalDocument)
    end
  end
end
