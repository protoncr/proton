# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains the description of an error in a Telegram Passport element.
  # type [Proton::Types::PassportElementType] Type of the Telegram Passport element which has the error.
  # message [::String] Error message.
  # source [Proton::Types::PassportElementErrorSource] Error source.
  class PassportElementError < Types::Base
    property type : Proton::Types::PassportElementType
    property message : ::String
    property source : Proton::Types::PassportElementErrorSource

    def initialize(@type : Proton::Types::PassportElementType, @message : ::String, @source : Proton::Types::PassportElementErrorSource)
    end
  end
end

