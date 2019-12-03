# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains the user's personal details.
  class PersonalDetails < Types::Base
    include JSON::Serializable

    # First name of the user written in English; 1-255 characters
    property first_name : ::String

    # Middle name of the user written in English; 0-255 characters
    property middle_name : ::String

    # Last name of the user written in English; 1-255 characters
    property last_name : ::String

    # Native first name of the user; 1-255 characters
    property native_first_name : ::String

    # Native middle name of the user; 0-255 characters
    property native_middle_name : ::String

    # Native last name of the user; 1-255 characters
    property native_last_name : ::String

    # Birthdate of the user
    property birthdate : Proton::Types::Date

    # Gender of the user, "male" or "female"
    property gender : ::String

    # A two-letter ISO 3166-1 alpha-2 country code of the user's country
    property country_code : ::String

    # A two-letter ISO 3166-1 alpha-2 country code of the user's residence country
    property residence_country_code : ::String

    def initialize(@first_name : ::String, @middle_name : ::String, @last_name : ::String, @native_first_name : ::String, @native_middle_name : ::String, @native_last_name : ::String, @birthdate : Proton::Types::Date, @gender : ::String, @country_code : ::String, @residence_country_code : ::String)
    end
  end
end
