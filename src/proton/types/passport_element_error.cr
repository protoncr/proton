# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains the description of an error in a Telegram Passport element.
  class PassportElementError < Types::Base
    include JSON::Serializable

    # Type of the Telegram Passport element which has the error
    property type : Proton::Types::PassportElementType

    # Error message
    property message : ::String

    # Error source
    property source : Proton::Types::PassportElementErrorSource

    def initialize(@type : Proton::Types::PassportElementType, @message : ::String, @source : Proton::Types::PassportElementErrorSource)
    end
  end
end
