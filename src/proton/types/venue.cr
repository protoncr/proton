# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a venue.
  class Venue < Types::Base
    include JSON::Serializable

    # Venue location; as defined by the sender
    property location : Proton::Types::Location

    # Venue name; as defined by the sender
    property title : ::String

    # Venue address; as defined by the sender
    property address : ::String

    # Provider of the venue database; as defined by the sender. Currently only "foursquare" needs to be supported
    property provider : ::String

    # Identifier of the venue in the provider database; as defined by the sender
    property id : ::String

    # Type of the venue in the provider database; as defined by the sender
    property type : ::String

    def initialize(@location : Proton::Types::Location, @title : ::String, @address : ::String, @provider : ::String, @id : ::String, @type : ::String)
    end
  end
end
