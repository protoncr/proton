# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root

require "./base"

module Proton::Types
  # Describes a venue.
  # location [Proton::Types::Location] Venue location; as defined by the sender.
  # title [::String] Venue name; as defined by the sender.
  # address [::String] Venue address; as defined by the sender.
  # provider [::String] Provider of the venue database; as defined by the sender.
  #   Currently only "foursquare" needs to be supported.
  # id [::String] Identifier of the venue in the provider database; as defined by the sender.
  # type [::String] Type of the venue in the provider database; as defined by the sender.
  class Venue < Types::Base
    property location : Proton::Types::Location
    property title : ::String
    property address : ::String
    property provider : ::String
    property id : ::String
    property type : ::String

    def initialize(@location : Proton::Types::Location, @title : ::String, @address : ::String, @provider : ::String, @id : ::String, @type : ::String)
    end
  end
end

