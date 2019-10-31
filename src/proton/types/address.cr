# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes an address.
  # country_code [::String] A two-letter ISO 3166-1 alpha-2 country code.
  # state [::String] State, if applicable.
  # city [::String] City.
  # street_line1 [::String] First line of the address.
  # street_line2 [::String] Second line of the address.
  # postal_code [::String] Address postal code.
  class Address < Types::Base
    property country_code : ::String
    property state : ::String
    property city : ::String
    property street_line1 : ::String
    property street_line2 : ::String
    property postal_code : ::String

    def initialize(@country_code : ::String, @state : ::String, @city : ::String, @street_line1 : ::String, @street_line2 : ::String, @postal_code : ::String)
    end
  end
end

