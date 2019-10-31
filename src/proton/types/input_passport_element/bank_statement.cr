# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A Telegram Passport element to be saved containing the user's bank statement.
  # bank_statement [Proton::Types::InputPersonalDocument] The bank statement to be saved.
  class InputPassportElement::BankStatement < Types::InputPassportElement
    property bank_statement : Proton::Types::InputPersonalDocument

    def initialize(@bank_statement : Proton::Types::InputPersonalDocument)
    end
  end
end

