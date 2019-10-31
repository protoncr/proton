# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a Telegram Passport element that was requested by a service.
  # type [Proton::Types::PassportElementType] Type of the element.
  # is_selfie_required [::Bool] True, if a selfie is required with the identity document.
  # is_translation_required [::Bool] True, if a certified English translation is required with the document.
  # is_native_name_required [::Bool] True, if personal details must include the user's name in the language of their
  #   country of residence.
  class PassportSuitableElement < Types::Base
    property type : Proton::Types::PassportElementType
    property is_selfie_required : ::Bool
    property is_translation_required : ::Bool
    property is_native_name_required : ::Bool

    def initialize(@type : Proton::Types::PassportElementType, @is_selfie_required : ::Bool, @is_translation_required : ::Bool, @is_native_name_required : ::Bool)
    end
  end
end

