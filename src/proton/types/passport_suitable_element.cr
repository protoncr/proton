# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a Telegram Passport element that was requested by a service.
  class PassportSuitableElement < Types::Base
    include JSON::Serializable

    # Type of the element
    property type : Proton::Types::PassportElementType

    # True, if a selfie is required with the identity document
    property is_selfie_required : ::Bool

    # True, if a certified English translation is required with the document
    property is_translation_required : ::Bool

    # True, if personal details must include the user's name in the language of their country of residence
    property is_native_name_required : ::Bool

    def initialize(@type : Proton::Types::PassportElementType, @is_selfie_required : ::Bool, @is_translation_required : ::Bool, @is_native_name_required : ::Bool)
    end
  end
end
