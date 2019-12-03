# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # Some language pack strings have been updated.
  class Update::LanguagePackStrings < Types::Update
    include JSON::Serializable

    # Localization target to which the language pack belongs
    property localization_target : ::String

    # Identifier of the updated language pack
    property language_pack_id : ::String

    # List of changed language pack strings
    property strings : ::Array(::String)

    def initialize(@localization_target : ::String, @language_pack_id : ::String, @strings : ::Array(::String))
    end
  end
end
