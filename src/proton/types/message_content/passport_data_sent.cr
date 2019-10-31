# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Telegram Passport data has been sent.
  # types [::Array(Proton::Types::PassportElementType)] List of Telegram Passport element types sent.
  class MessageContent::PassportDataSent < Types::MessageContent
    property types : ::Array(Proton::Types::PassportElementType)

    def initialize(@types : ::Array(Proton::Types::PassportElementType))
    end
  end
end

