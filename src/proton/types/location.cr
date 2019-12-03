# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a location on planet Earth.
  class Location < Types::Base
    include JSON::Serializable

    # Latitude of the location in degrees; as defined by the sender
    property latitude : ::Float64

    # Longitude of the location, in degrees; as defined by the sender
    property longitude : ::Float64

    def initialize(@latitude : ::Float64, @longitude : ::Float64)
    end
  end
end
