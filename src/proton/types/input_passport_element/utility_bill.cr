# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A Telegram Passport element to be saved containing the user's utility bill.
  # utility_bill [Proton::Types::InputPersonalDocument] The utility bill to be saved.
  class InputPassportElement::UtilityBill < Types::InputPassportElement
    property utility_bill : Proton::Types::InputPersonalDocument

    def initialize(@utility_bill : Proton::Types::InputPersonalDocument)
    end
  end
end

