# This is an auto generated file. If something isn't working
# correctly, see 'typegen.cr' in the project root



module Proton::Types
  # A message with information about a venue.
  # venue [Proton::Types::Venue] Venue to send.
  class InputMessageContent::Venue < Types::InputMessageContent
    property venue : Proton::Types::Venue

    def initialize(@venue : Proton::Types::Venue)
    end
  end
end

