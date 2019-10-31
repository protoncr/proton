# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A message with a location.
  # location [Proton::Types::Location] Location to be sent.
  # live_period [::Int32] Period for which the location can be updated, in seconds; should bebetween 60 and 86400 for a
  #   live location and 0 otherwise.
  class InputMessageContent::Location < Types::InputMessageContent
    property location : Proton::Types::Location
    property live_period : ::Int32

    def initialize(@location : Proton::Types::Location, @live_period : ::Int32)
    end
  end
end

