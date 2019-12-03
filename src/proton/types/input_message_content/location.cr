# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root


module Proton::Types
  # A message with a location.
  class InputMessageContent::Location < Types::InputMessageContent
    include JSON::Serializable

    # Location to be sent
    property location : Proton::Types::Location

    # Period for which the location can be updated, in seconds; should bebetween 60 and 86400 for a live location and 0 otherwise
    property live_period : ::Int32

    def initialize(@location : Proton::Types::Location, @live_period : ::Int32)
    end
  end
end
