# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Contains the user's personal details.
  # first_name [::String] First name of the user written in English; 1-255 characters.
  # middle_name [::String] Middle name of the user written in English; 0-255 characters.
  # last_name [::String] Last name of the user written in English; 1-255 characters.
  # native_first_name [::String] Native first name of the user; 1-255 characters.
  # native_middle_name [::String] Native middle name of the user; 0-255 characters.
  # native_last_name [::String] Native last name of the user; 1-255 characters.
  # birthdate [Proton::Types::Date] Birthdate of the user.
  # gender [::String] Gender of the user, "male" or "female".
  # country_code [::String] A two-letter ISO 3166-1 alpha-2 country code of the user's country.
  # residence_country_code [::String] A two-letter ISO 3166-1 alpha-2 country code of the user's residence country.
  class PersonalDetails < Types::Base
    property first_name : ::String
    property middle_name : ::String
    property last_name : ::String
    property native_first_name : ::String
    property native_middle_name : ::String
    property native_last_name : ::String
    property birthdate : Proton::Types::Date
    property gender : ::String
    property country_code : ::String
    property residence_country_code : ::String

    def initialize(@first_name : ::String, @middle_name : ::String, @last_name : ::String, @native_first_name : ::String, @native_middle_name : ::String, @native_last_name : ::String, @birthdate : Proton::Types::Date, @gender : ::String, @country_code : ::String, @residence_country_code : ::String)
    end
  end
end

