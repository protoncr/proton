# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes an address.
  class Address < Types::Base
    include JSON::Serializable

    # A two-letter ISO 3166-1 alpha-2 country code
    property country_code : ::String

    # State, if applicable
    property state : ::String

    # City
    property city : ::String

    # First line of the address
    property street_line1 : ::String

    # Second line of the address
    property street_line2 : ::String

    # Address postal code
    property postal_code : ::String

    def initialize(@country_code : ::String, @state : ::String, @city : ::String, @street_line1 : ::String, @street_line2 : ::String, @postal_code : ::String)
    end
  end
end
