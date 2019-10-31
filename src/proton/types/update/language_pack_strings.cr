# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # Some language pack strings have been updated.
  # localization_target [::String] Localization target to which the language pack belongs.
  # language_pack_id [::String] Identifier of the updated language pack.
  # strings [::Array(::String)] List of changed language pack strings.
  class Update::LanguagePackStrings < Types::Update
    property localization_target : ::String
    property language_pack_id : ::String
    property strings : ::Array(::String)

    def initialize(@localization_target : ::String, @language_pack_id : ::String, @strings : ::Array(::String))
    end
  end
end

