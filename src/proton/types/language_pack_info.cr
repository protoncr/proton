# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains information about a language pack.
  class LanguagePackInfo < Types::Base
    include JSON::Serializable

    # Unique language pack identifier
    property id : ::String

    # Language name
    property name : ::String

    # Name of the language in that language
    property native_name : ::String

    # A language code to be used to apply plural forms. See https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html for more info
    property plural_code : ::String

    # True, if the language pack is official
    property is_official : ::Bool

    # True, if the language pack strings are RTL
    property is_rtl : ::Bool

    # True, if the language pack is a beta language pack
    property is_beta : ::Bool

    # True, if the language pack is installed by the current user
    property is_installed : ::Bool

    # Total number of non-deleted strings from the language pack
    property total_string_count : ::Int32

    # Total number of translated strings from the language pack
    property translated_string_count : ::Int32

    # Total number of non-deleted strings from the language pack available locally
    property local_string_count : ::Int32

    # Identifier of a base language pack; may be empty. If a string is missed in the language pack, then it should be fetched from base language pack. Unsupported in custom language packs
    property base_language_pack_id : ::String? = nil

    # Link to language translation interface; empty for custom local language packs
    property translation_url : ::String? = nil

    def initialize(@id : ::String, @name : ::String, @native_name : ::String, @plural_code : ::String, @is_official : ::Bool, @is_rtl : ::Bool, @is_beta : ::Bool, @is_installed : ::Bool, @total_string_count : ::Int32, @translated_string_count : ::Int32, @local_string_count : ::Int32, @base_language_pack_id : ::String? = nil, @translation_url : ::String? = nil)
    end
  end
end
