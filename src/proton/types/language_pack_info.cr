# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a language pack.
  # id [::String] Unique language pack identifier.
  # base_language_pack_id [::String, nil] Identifier of a base language pack; may be empty.
  #   If a string is missed in the language pack, then it should be fetched from base language pack.
  #   Unsupported in custom language packs.
  # name [::String] Language name.
  # native_name [::String] Name of the language in that language.
  # plural_code [::String] A language code to be used to apply plural forms.
  #   See https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html for more info.
  # is_official [::Bool] True, if the language pack is official.
  # is_rtl [::Bool] True, if the language pack strings are RTL.
  # is_beta [::Bool] True, if the language pack is a beta language pack.
  # is_installed [::Bool] True, if the language pack is installed by the current user.
  # total_string_count [::Int32] Total number of non-deleted strings from the language pack.
  # translated_string_count [::Int32] Total number of translated strings from the language pack.
  # local_string_count [::Int32] Total number of non-deleted strings from the language pack available locally.
  # translation_url [::String, nil] Link to language translation interface; empty for custom local language packs.
  class LanguagePackInfo < Types::Base
    property id : ::String
    property base_language_pack_id : ::String?
    property name : ::String
    property native_name : ::String
    property plural_code : ::String
    property is_official : ::Bool
    property is_rtl : ::Bool
    property is_beta : ::Bool
    property is_installed : ::Bool
    property total_string_count : ::Int32
    property translated_string_count : ::Int32
    property local_string_count : ::Int32
    property translation_url : ::String?

    def initialize(@id : ::String, @name : ::String, @native_name : ::String, @plural_code : ::String, @is_official : ::Bool, @is_rtl : ::Bool, @is_beta : ::Bool, @is_installed : ::Bool, @total_string_count : ::Int32, @translated_string_count : ::Int32, @local_string_count : ::Int32, @base_language_pack_id : ::String? = nil, @translation_url : ::String? = nil)
    end
  end
end

