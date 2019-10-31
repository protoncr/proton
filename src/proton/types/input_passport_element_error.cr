# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains the description of an error in a Telegram Passport element; for bots only.
  # type [Proton::Types::PassportElementType] Type of Telegram Passport element that has the error.
  # message [::String] Error message.
  # source [Proton::Types::InputPassportElementErrorSource] Error source.
  class InputPassportElementError < Types::Base
    property type : Proton::Types::PassportElementType
    property message : ::String
    property source : Proton::Types::InputPassportElementErrorSource

    def initialize(@type : Proton::Types::PassportElementType, @message : ::String, @source : Proton::Types::InputPassportElementErrorSource)
    end
  end
end

